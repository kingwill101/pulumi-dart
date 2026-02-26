import 'package:pulumi/pulumi.dart';
import 'get_repositories_args.dart';
import 'get_repositories_result.dart';

/// Get information about Artifact Registry repositories.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories/list).
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.artifactregistry.getRepositories({
/// location: "us-central1",
/// project: "my-project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.artifactregistry.get_repositories(location="us-central1",
/// project="my-project")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Gcp.ArtifactRegistry.GetRepositories.Invoke(new()
/// {
/// Location = "us-central1",
/// Project = "my-project",
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
/// _, err := artifactregistry.GetRepositories(ctx, &artifactregistry.GetRepositoriesArgs{
/// Location: "us-central1",
/// Project:  pulumi.StringRef("my-project"),
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
/// import com.pulumi.gcp.artifactregistry.inputs.GetRepositoriesArgs;
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
/// final var example = ArtifactregistryFunctions.getRepositories(GetRepositoriesArgs.builder()
/// .location("us-central1")
/// .project("my-project")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: gcp:artifactregistry:getRepositories
/// arguments:
/// location: us-central1
/// project: my-project
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRepositoriesResult> getRepositories(
  GetRepositoriesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getRepositories:getRepositories',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoriesResult.fromMap(result);
}
