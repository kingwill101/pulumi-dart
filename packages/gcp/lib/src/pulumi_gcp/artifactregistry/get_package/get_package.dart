import 'package:pulumi/pulumi.dart';
import 'get_package_args.dart';
import 'get_package_result.dart';

/// This data source fetches information of a package from a provided Artifact Registry repository.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as google from "@pulumi/google";
///
/// const myPackage = new google.index.ArtifactRegistryPackage("my_package", {
/// location: "us-west1",
/// repositoryId: "my-repository",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_google as google
///
/// my_package = google.index.ArtifactRegistryPackage("my_package",
/// location=us-west1,
/// repository_id=my-repository)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Google = Pulumi.Google;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myPackage = new Google.Index.ArtifactRegistryPackage("my_package", new()
/// {
/// Location = "us-west1",
/// RepositoryId = "my-repository",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-google/sdk/go/google"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := google.NewArtifactRegistryPackage(ctx, "my_package", &google.ArtifactRegistryPackageArgs{
/// Location:     "us-west1",
/// RepositoryId: "my-repository",
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
/// import com.pulumi.google.ArtifactRegistryPackage;
/// import com.pulumi.google.ArtifactRegistryPackageArgs;
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
/// var myPackage = new ArtifactRegistryPackage("myPackage", ArtifactRegistryPackageArgs.builder()
/// .location("us-west1")
/// .repositoryId("my-repository")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myPackage:
/// type: google:ArtifactRegistryPackage
/// name: my_package
/// properties:
/// location: us-west1
/// repositoryId: my-repository
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPackageResult> getPackage(
  GetPackageArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getPackage:getPackage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPackageResult.fromMap(result);
}
