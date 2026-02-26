import 'package:pulumi/pulumi.dart';
import 'get_docker_images_args.dart';
import 'get_docker_images_result.dart';

/// Get information about Artifact Registry Docker images.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs/docker)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.dockerImages/list).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myImages = gcp.artifactregistry.getDockerImages({
/// location: "us-central1",
/// repositoryId: "example-repo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_images = gcp.artifactregistry.get_docker_images(location="us-central1",
/// repository_id="example-repo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myImages = Gcp.ArtifactRegistry.GetDockerImages.Invoke(new()
/// {
/// Location = "us-central1",
/// RepositoryId = "example-repo",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := artifactregistry.GetDockerImages(ctx, &artifactregistry.GetDockerImagesArgs{
/// Location:     "us-central1",
/// RepositoryId: "example-repo",
/// }, nil)
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
/// import com.pulumi.gcp.artifactregistry.ArtifactregistryFunctions;
/// import com.pulumi.gcp.artifactregistry.inputs.GetDockerImagesArgs;
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
/// final var myImages = ArtifactregistryFunctions.getDockerImages(GetDockerImagesArgs.builder()
/// .location("us-central1")
/// .repositoryId("example-repo")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myImages:
/// fn::invoke:
/// function: gcp:artifactregistry:getDockerImages
/// arguments:
/// location: us-central1
/// repositoryId: example-repo
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDockerImagesResult> getDockerImages(
  GetDockerImagesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getDockerImages:getDockerImages',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDockerImagesResult.fromMap(result);
}
