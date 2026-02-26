import 'package:pulumi/pulumi.dart';
import 'get_python_packages_args.dart';
import 'get_python_packages_result.dart';

/// Get information about Artifact Registry Python packages.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs/python)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.pythonPackages/list).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myPackages = gcp.artifactregistry.getPythonPackages({
/// location: "us-central1",
/// repositoryId: "example-repo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_packages = gcp.artifactregistry.get_python_packages(location="us-central1",
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
/// var myPackages = Gcp.ArtifactRegistry.GetPythonPackages.Invoke(new()
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
/// _, err := artifactregistry.GetPythonPackages(ctx, &artifactregistry.GetPythonPackagesArgs{
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
/// import com.pulumi.gcp.artifactregistry.inputs.GetPythonPackagesArgs;
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
/// final var myPackages = ArtifactregistryFunctions.getPythonPackages(GetPythonPackagesArgs.builder()
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
/// function: gcp:artifactregistry:getPythonPackages
/// arguments:
/// location: us-central1
/// repositoryId: example-repo
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPythonPackagesResult> getPythonPackages(
  GetPythonPackagesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getPythonPackages:getPythonPackages',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPythonPackagesResult.fromMap(result);
}
