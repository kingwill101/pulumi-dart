// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_docker/pulumi_docker.dart' as docker;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    final config = pulumi.Config("gcp");
    final location = config.get("region") ?? "us-central1";
    final project = config.require("project");

    final helloService = gcp.cloudrun.Service(
      "hello",
      args: gcp.cloudrun.ServiceArgs(
        location: location.output(),
        template: gcp.cloudrun.ServiceTemplate(
          spec: gcp.cloudrun.ServiceTemplateSpec(
            containers: [
              gcp.cloudrun.ServiceTemplateSpecContainer(
                image: "gcr.io/cloudrun/hello",
              ),
            ],
          ),
        ),
      ),
    );

    gcp.cloudrun.IamMember(
      "hello-everyone",
      args: gcp.cloudrun.IamMemberArgs(
        service: helloService.name,
        location: location.output(),
        role: "roles/run.invoker",
        member: "allUsers",
      ),
    );

    const imageName = "ruby-app";
    final myImage = docker.index.Image(
      imageName,
      args: docker.index.ImageArgs(
        imageName: "gcr.io/$project/$imageName:v1.0.0",
        build: docker.index.DockerBuild(
          context: "./app",
          platform: "linux/amd64",
        ),
      ),
    );

    final rubyService = gcp.cloudrun.Service(
      "ruby",
      args: gcp.cloudrun.ServiceArgs(
        location: location.output(),
        template: gcp.cloudrun.ServiceTemplate(
          spec: gcp.cloudrun.ServiceTemplateSpec(
            containerConcurrency: 50,
            containers: [
              gcp.cloudrun.ServiceTemplateSpecContainer(
                image: myImage.imageName,
                resources: gcp.cloudrun.ServiceTemplateSpecContainerResources(
                  limits: {
                    "memory": "1Gi",
                  },
                ),
                ports: [
                  gcp.cloudrun.ServiceTemplateSpecContainerPort(
                    containerPort: 8080,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    gcp.cloudrun.IamMember(
      "ruby-everyone",
      args: gcp.cloudrun.IamMemberArgs(
        service: rubyService.name,
        location: location.output(),
        role: "roles/run.invoker",
        member: "allUsers",
      ),
    );

    registerOutputs({
      "helloUrl": helloService.statuses.apply((statuses) =>
          statuses.isNotEmpty ? statuses[0].url ?? "" : ""),
      "rubyUrl": rubyService.statuses.apply((statuses) =>
          statuses.isNotEmpty ? statuses[0].url ?? "" : ""),
    });
  }
}

Future<void> main() async {
  await pulumi.Deployment.run(() => ExampleStack());
}
