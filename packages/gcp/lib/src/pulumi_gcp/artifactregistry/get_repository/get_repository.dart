import 'package:pulumi/pulumi.dart';
import 'get_repository_args.dart';
import 'get_repository_result.dart';

/// Get information about a Google Artifact Registry Repository. For more information see
/// the [official documentation](https://cloud.google.com/artifact-registry/docs/)
/// and [API](https://cloud.google.com/artifact-registry/docs/apis).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_repo = gcp.artifactregistry.getRepository({
/// location: "us-central1",
/// repositoryId: "my-repository",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_repo = gcp.artifactregistry.get_repository(location="us-central1",
/// repository_id="my-repository")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_repo = Gcp.ArtifactRegistry.GetRepository.Invoke(new()
/// {
/// Location = "us-central1",
/// RepositoryId = "my-repository",
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
/// _, err := artifactregistry.LookupRepository(ctx, &artifactregistry.LookupRepositoryArgs{
/// Location:     "us-central1",
/// RepositoryId: "my-repository",
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
/// import com.pulumi.gcp.artifactregistry.inputs.GetRepositoryArgs;
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
/// final var my-repo = ArtifactregistryFunctions.getRepository(GetRepositoryArgs.builder()
/// .location("us-central1")
/// .repositoryId("my-repository")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-repo:
/// fn::invoke:
/// function: gcp:artifactregistry:getRepository
/// arguments:
/// location: us-central1
/// repositoryId: my-repository
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRepositoryResult> getRepository(
  GetRepositoryArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getRepository:getRepository',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryResult.fromMap(result);
}
