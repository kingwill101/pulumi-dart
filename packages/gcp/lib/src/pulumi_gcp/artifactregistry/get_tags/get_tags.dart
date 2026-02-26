import 'package:pulumi/pulumi.dart';
import 'get_tags_args.dart';
import 'get_tags_result.dart';

/// Get information about Artifact Registry tags.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs/overview)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.packages.tags/list).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myTags = gcp.artifactregistry.getTags({
/// location: "us-central1",
/// repositoryId: "example-repo",
/// packageName: "example-package",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_tags = gcp.artifactregistry.get_tags(location="us-central1",
/// repository_id="example-repo",
/// package_name="example-package")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myTags = Gcp.ArtifactRegistry.GetTags.Invoke(new()
/// {
/// Location = "us-central1",
/// RepositoryId = "example-repo",
/// PackageName = "example-package",
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
/// _, err := artifactregistry.GetTags(ctx, &artifactregistry.GetTagsArgs{
/// Location:     "us-central1",
/// RepositoryId: "example-repo",
/// PackageName:  "example-package",
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
/// import com.pulumi.gcp.artifactregistry.inputs.GetTagsArgs;
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
/// final var myTags = ArtifactregistryFunctions.getTags(GetTagsArgs.builder()
/// .location("us-central1")
/// .repositoryId("example-repo")
/// .packageName("example-package")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myTags:
/// fn::invoke:
/// function: gcp:artifactregistry:getTags
/// arguments:
/// location: us-central1
/// repositoryId: example-repo
/// packageName: example-package
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTagsResult> getTags(
  GetTagsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getTags:getTags',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagsResult.fromMap(result);
}
