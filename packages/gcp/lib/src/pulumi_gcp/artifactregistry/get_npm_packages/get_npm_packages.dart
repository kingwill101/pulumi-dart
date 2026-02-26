import 'package:pulumi/pulumi.dart';
import 'get_npm_packages_args.dart';
import 'get_npm_packages_result.dart';

/// Get information about Artifact Registry Npm packages.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs/nodejs)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.npmPackages/list).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myPackages = gcp.artifactregistry.getNpmPackages({
/// location: "us-central1",
/// repositoryId: "example-repo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_packages = gcp.artifactregistry.get_npm_packages(location="us-central1",
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
/// var myPackages = Gcp.ArtifactRegistry.GetNpmPackages.Invoke(new()
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
/// _, err := artifactregistry.GetNpmPackages(ctx, &artifactregistry.GetNpmPackagesArgs{
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
/// import com.pulumi.gcp.artifactregistry.inputs.GetNpmPackagesArgs;
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
/// final var myPackages = ArtifactregistryFunctions.getNpmPackages(GetNpmPackagesArgs.builder()
/// .location("us-central1")
/// .repositoryId("example-repo")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myPackages:
/// fn::invoke:
/// function: gcp:artifactregistry:getNpmPackages
/// arguments:
/// location: us-central1
/// repositoryId: example-repo
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNpmPackagesResult> getNpmPackages(
  GetNpmPackagesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getNpmPackages:getNpmPackages',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNpmPackagesResult.fromMap(result);
}
