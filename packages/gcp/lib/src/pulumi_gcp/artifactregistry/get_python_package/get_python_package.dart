import 'package:pulumi/pulumi.dart';
import 'get_python_package_args.dart';
import 'get_python_package_result.dart';

/// This data source fetches information from a provided Artifact Registry repository, based on a the latest version of the package and optional version.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pythonRepo = new gcp.artifactregistry.Repository("python_repo", {
/// location: "us-central1",
/// repositoryId: "my-python-repo",
/// format: "PYTHON",
/// });
/// const latest = gcp.artifactregistry.getPythonPackageOutput({
/// location: pythonRepo.location,
/// repositoryId: pythonRepo.repositoryId,
/// packageName: "example_pkg",
/// });
/// const withVersion = gcp.artifactregistry.getPythonPackageOutput({
/// location: pythonRepo.location,
/// repositoryId: pythonRepo.repositoryId,
/// packageName: "example_pkg:1.0.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// python_repo = gcp.artifactregistry.Repository("python_repo",
/// location="us-central1",
/// repository_id="my-python-repo",
/// format="PYTHON")
/// latest = gcp.artifactregistry.get_python_package_output(location=python_repo.location,
/// repository_id=python_repo.repository_id,
/// package_name="example_pkg")
/// with_version = gcp.artifactregistry.get_python_package_output(location=python_repo.location,
/// repository_id=python_repo.repository_id,
/// package_name="example_pkg:1.0.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var pythonRepo = new Gcp.ArtifactRegistry.Repository("python_repo", new()
/// {
/// Location = "us-central1",
/// RepositoryId = "my-python-repo",
/// Format = "PYTHON",
/// });
///
/// var latest = Gcp.ArtifactRegistry.GetPythonPackage.Invoke(new()
/// {
/// Location = pythonRepo.Location,
/// RepositoryId = pythonRepo.RepositoryId,
/// PackageName = "example_pkg",
/// });
///
/// var withVersion = Gcp.ArtifactRegistry.GetPythonPackage.Invoke(new()
/// {
/// Location = pythonRepo.Location,
/// RepositoryId = pythonRepo.RepositoryId,
/// PackageName = "example_pkg:1.0.0",
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
/// pythonRepo, err := artifactregistry.NewRepository(ctx, "python_repo", &artifactregistry.RepositoryArgs{
/// Location:     pulumi.String("us-central1"),
/// RepositoryId: pulumi.String("my-python-repo"),
/// Format:       pulumi.String("PYTHON"),
/// })
/// if err != nil {
/// return err
/// }
/// _ = artifactregistry.GetPythonPackageOutput(ctx, artifactregistry.GetPythonPackageOutputArgs{
/// Location:     pythonRepo.Location,
/// RepositoryId: pythonRepo.RepositoryId,
/// PackageName:  pulumi.String("example_pkg"),
/// }, nil)
/// _ = artifactregistry.GetPythonPackageOutput(ctx, artifactregistry.GetPythonPackageOutputArgs{
/// Location:     pythonRepo.Location,
/// RepositoryId: pythonRepo.RepositoryId,
/// PackageName:  pulumi.String("example_pkg:1.0.0"),
/// }, nil)
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
/// import com.pulumi.gcp.artifactregistry.inputs.GetPythonPackageArgs;
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
/// var pythonRepo = new Repository("pythonRepo", RepositoryArgs.builder()
/// .location("us-central1")
/// .repositoryId("my-python-repo")
/// .format("PYTHON")
/// .build());
///
/// final var latest = ArtifactregistryFunctions.getPythonPackage(GetPythonPackageArgs.builder()
/// .location(pythonRepo.location())
/// .repositoryId(pythonRepo.repositoryId())
/// .packageName("example_pkg")
/// .build());
///
/// final var withVersion = ArtifactregistryFunctions.getPythonPackage(GetPythonPackageArgs.builder()
/// .location(pythonRepo.location())
/// .repositoryId(pythonRepo.repositoryId())
/// .packageName("example_pkg:1.0.0")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// pythonRepo:
/// type: gcp:artifactregistry:Repository
/// name: python_repo
/// properties:
/// location: us-central1
/// repositoryId: my-python-repo
/// format: PYTHON
/// variables:
/// latest:
/// fn::invoke:
/// function: gcp:artifactregistry:getPythonPackage
/// arguments:
/// location: ${pythonRepo.location}
/// repositoryId: ${pythonRepo.repositoryId}
/// packageName: example_pkg
/// withVersion:
/// fn::invoke:
/// function: gcp:artifactregistry:getPythonPackage
/// arguments:
/// location: ${pythonRepo.location}
/// repositoryId: ${pythonRepo.repositoryId}
/// packageName: example_pkg:1.0.0
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPythonPackageResult> getPythonPackage(
  GetPythonPackageArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getPythonPackage:getPythonPackage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPythonPackageResult.fromMap(result);
}
