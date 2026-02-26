import 'package:pulumi/pulumi.dart';
import 'get_npm_package_args.dart';
import 'get_npm_package_result.dart';

/// This data source fetches information from a provided Artifact Registry repository, based on a the latest version of the package and optional version.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const npmRepo = new gcp.artifactregistry.Repository("npm_repo", {
/// location: "us-central1",
/// repositoryId: "my-npm-repo",
/// format: "NPM",
/// });
/// const latest = gcp.artifactregistry.getNpmPackageOutput({
/// location: npmRepo.location,
/// repositoryId: npmRepo.repositoryId,
/// packageName: "example-pkg",
/// });
/// const withVersion = gcp.artifactregistry.getNpmPackageOutput({
/// location: npmRepo.location,
/// repositoryId: npmRepo.repositoryId,
/// packageName: "example-pkg:1.0.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// npm_repo = gcp.artifactregistry.Repository("npm_repo",
/// location="us-central1",
/// repository_id="my-npm-repo",
/// format="NPM")
/// latest = gcp.artifactregistry.get_npm_package_output(location=npm_repo.location,
/// repository_id=npm_repo.repository_id,
/// package_name="example-pkg")
/// with_version = gcp.artifactregistry.get_npm_package_output(location=npm_repo.location,
/// repository_id=npm_repo.repository_id,
/// package_name="example-pkg:1.0.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var npmRepo = new Gcp.ArtifactRegistry.Repository("npm_repo", new()
/// {
/// Location = "us-central1",
/// RepositoryId = "my-npm-repo",
/// Format = "NPM",
/// });
///
/// var latest = Gcp.ArtifactRegistry.GetNpmPackage.Invoke(new()
/// {
/// Location = npmRepo.Location,
/// RepositoryId = npmRepo.RepositoryId,
/// PackageName = "example-pkg",
/// });
///
/// var withVersion = Gcp.ArtifactRegistry.GetNpmPackage.Invoke(new()
/// {
/// Location = npmRepo.Location,
/// RepositoryId = npmRepo.RepositoryId,
/// PackageName = "example-pkg:1.0.0",
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
/// npmRepo, err := artifactregistry.NewRepository(ctx, "npm_repo", &artifactregistry.RepositoryArgs{
/// Location:     pulumi.String("us-central1"),
/// RepositoryId: pulumi.String("my-npm-repo"),
/// Format:       pulumi.String("NPM"),
/// })
/// if err != nil {
/// return err
/// }
/// _ = artifactregistry.GetNpmPackageOutput(ctx, artifactregistry.GetNpmPackageOutputArgs{
/// Location:     npmRepo.Location,
/// RepositoryId: npmRepo.RepositoryId,
/// PackageName:  pulumi.String("example-pkg"),
/// }, nil)
/// _ = artifactregistry.GetNpmPackageOutput(ctx, artifactregistry.GetNpmPackageOutputArgs{
/// Location:     npmRepo.Location,
/// RepositoryId: npmRepo.RepositoryId,
/// PackageName:  pulumi.String("example-pkg:1.0.0"),
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
/// import com.pulumi.gcp.artifactregistry.inputs.GetNpmPackageArgs;
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
/// var npmRepo = new Repository("npmRepo", RepositoryArgs.builder()
/// .location("us-central1")
/// .repositoryId("my-npm-repo")
/// .format("NPM")
/// .build());
///
/// final var latest = ArtifactregistryFunctions.getNpmPackage(GetNpmPackageArgs.builder()
/// .location(npmRepo.location())
/// .repositoryId(npmRepo.repositoryId())
/// .packageName("example-pkg")
/// .build());
///
/// final var withVersion = ArtifactregistryFunctions.getNpmPackage(GetNpmPackageArgs.builder()
/// .location(npmRepo.location())
/// .repositoryId(npmRepo.repositoryId())
/// .packageName("example-pkg:1.0.0")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// npmRepo:
/// type: gcp:artifactregistry:Repository
/// name: npm_repo
/// properties:
/// location: us-central1
/// repositoryId: my-npm-repo
/// format: NPM
/// variables:
/// latest:
/// fn::invoke:
/// function: gcp:artifactregistry:getNpmPackage
/// arguments:
/// location: ${npmRepo.location}
/// repositoryId: ${npmRepo.repositoryId}
/// packageName: example-pkg
/// withVersion:
/// fn::invoke:
/// function: gcp:artifactregistry:getNpmPackage
/// arguments:
/// location: ${npmRepo.location}
/// repositoryId: ${npmRepo.repositoryId}
/// packageName: example-pkg:1.0.0
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNpmPackageResult> getNpmPackage(
  GetNpmPackageArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getNpmPackage:getNpmPackage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNpmPackageResult.fromMap(result);
}
