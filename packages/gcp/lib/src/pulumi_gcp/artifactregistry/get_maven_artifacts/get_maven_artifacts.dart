import 'package:pulumi/pulumi.dart';
import 'get_maven_artifacts_args.dart';
import 'get_maven_artifacts_result.dart';

/// Get information about Artifact Registry Maven artifacts.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs/java)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.mavenArtifacts/list).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myArtifacts = gcp.artifactregistry.getMavenArtifacts({
/// location: "us-central1",
/// repositoryId: "example-repo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_artifacts = gcp.artifactregistry.get_maven_artifacts(location="us-central1",
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
/// var myArtifacts = Gcp.ArtifactRegistry.GetMavenArtifacts.Invoke(new()
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
/// _, err := artifactregistry.GetMavenArtifacts(ctx, &artifactregistry.GetMavenArtifactsArgs{
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
/// import com.pulumi.gcp.artifactregistry.inputs.GetMavenArtifactsArgs;
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
/// final var myArtifacts = ArtifactregistryFunctions.getMavenArtifacts(GetMavenArtifactsArgs.builder()
/// .location("us-central1")
/// .repositoryId("example-repo")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myArtifacts:
/// fn::invoke:
/// function: gcp:artifactregistry:getMavenArtifacts
/// arguments:
/// location: us-central1
/// repositoryId: example-repo
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetMavenArtifactsResult> getMavenArtifacts(
  GetMavenArtifactsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getMavenArtifacts:getMavenArtifacts',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMavenArtifactsResult.fromMap(result);
}
