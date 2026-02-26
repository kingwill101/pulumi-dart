import 'package:pulumi/pulumi.dart';
import 'get_docker_image_args.dart';
import 'get_docker_image_result.dart';

/// This data source fetches information from a provided Artifact Registry repository, including the fully qualified name and URI for an image, based on a the latest version of image name and optional digest or tag.
///
/// > **Note**
/// Requires one of the following OAuth scopes: `https://www.googleapis.com/auth/cloud-platform` or `https://www.googleapis.com/auth/cloud-platform.read-only`.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myRepo = new gcp.artifactregistry.Repository("my_repo", {
/// location: "us-west1",
/// repositoryId: "my-repository",
/// format: "DOCKER",
/// });
/// const myImage = gcp.artifactregistry.getDockerImageOutput({
/// location: myRepo.location,
/// repositoryId: myRepo.repositoryId,
/// imageName: "my-image:my-tag",
/// });
/// const _default = new gcp.cloudrunv2.Service("default", {template: {
/// containers: [{
/// image: myImage.apply(myImage => myImage.selfLink),
/// }],
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_repo = gcp.artifactregistry.Repository("my_repo",
/// location="us-west1",
/// repository_id="my-repository",
/// format="DOCKER")
/// my_image = gcp.artifactregistry.get_docker_image_output(location=my_repo.location,
/// repository_id=my_repo.repository_id,
/// image_name="my-image:my-tag")
/// default = gcp.cloudrunv2.Service("default", template={
/// "containers": [{
/// "image": my_image.self_link,
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myRepo = new Gcp.ArtifactRegistry.Repository("my_repo", new()
/// {
/// Location = "us-west1",
/// RepositoryId = "my-repository",
/// Format = "DOCKER",
/// });
///
/// var myImage = Gcp.ArtifactRegistry.GetDockerImage.Invoke(new()
/// {
/// Location = myRepo.Location,
/// RepositoryId = myRepo.RepositoryId,
/// ImageName = "my-image:my-tag",
/// });
///
/// var @default = new Gcp.CloudRunV2.Service("default", new()
/// {
/// Template = new Gcp.CloudRunV2.Inputs.ServiceTemplateArgs
/// {
/// Containers = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
/// {
/// Image = myImage.Apply(getDockerImageResult => getDockerImageResult.SelfLink),
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myRepo, err := artifactregistry.NewRepository(ctx, "my_repo", &artifactregistry.RepositoryArgs{
/// Location:     pulumi.String("us-west1"),
/// RepositoryId: pulumi.String("my-repository"),
/// Format:       pulumi.String("DOCKER"),
/// })
/// if err != nil {
/// return err
/// }
/// myImage := artifactregistry.GetDockerImageOutput(ctx, artifactregistry.GetDockerImageOutputArgs{
/// Location:     myRepo.Location,
/// RepositoryId: myRepo.RepositoryId,
/// ImageName:    pulumi.String("my-image:my-tag"),
/// }, nil)
/// _, err = cloudrunv2.NewService(ctx, "default", &cloudrunv2.ServiceArgs{
/// Template: &cloudrunv2.ServiceTemplateArgs{
/// Containers: cloudrunv2.ServiceTemplateContainerArray{
/// &cloudrunv2.ServiceTemplateContainerArgs{
/// Image: myImage.ApplyT(func(myImage artifactregistry.GetDockerImageResult) (*string, error) {
/// return &myImage.SelfLink, nil
/// }).(pulumi.StringPtrOutput),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.ArtifactregistryFunctions;
/// import com.pulumi.gcp.artifactregistry.inputs.GetDockerImageArgs;
/// import com.pulumi.gcp.cloudrunv2.Service;
/// import com.pulumi.gcp.cloudrunv2.ServiceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var myRepo = new Repository("myRepo", RepositoryArgs.builder()
/// .location("us-west1")
/// .repositoryId("my-repository")
/// .format("DOCKER")
/// .build());
///
/// final var myImage = ArtifactregistryFunctions.getDockerImage(GetDockerImageArgs.builder()
/// .location(myRepo.location())
/// .repositoryId(myRepo.repositoryId())
/// .imageName("my-image:my-tag")
/// .build());
///
/// var default_ = new Service("default", ServiceArgs.builder()
/// .template(ServiceTemplateArgs.builder()
/// .containers(ServiceTemplateContainerArgs.builder()
/// .image(myImage.applyValue(_myImage -> _myImage.selfLink()))
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myRepo:
/// type: gcp:artifactregistry:Repository
/// name: my_repo
/// properties:
/// location: us-west1
/// repositoryId: my-repository
/// format: DOCKER
/// default:
/// type: gcp:cloudrunv2:Service
/// properties:
/// template:
/// containers:
/// - image: ${myImage.selfLink}
/// variables:
/// myImage:
/// fn::invoke:
/// function: gcp:artifactregistry:getDockerImage
/// arguments:
/// location: ${myRepo.location}
/// repositoryId: ${myRepo.repositoryId}
/// imageName: my-image:my-tag
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDockerImageResult> getDockerImage(
  GetDockerImageArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getDockerImage:getDockerImage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDockerImageResult.fromMap(result);
}
