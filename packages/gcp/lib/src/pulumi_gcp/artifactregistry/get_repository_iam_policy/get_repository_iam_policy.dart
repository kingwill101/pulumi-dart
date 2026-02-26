import 'package:pulumi/pulumi.dart';
import 'get_repository_iam_policy_args.dart';
import 'get_repository_iam_policy_result.dart';

/// Retrieves the current IAM policy data for repository
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.artifactregistry.getRepositoryIamPolicy({
/// project: my_repo.project,
/// location: my_repo.location,
/// repository: my_repo.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.artifactregistry.get_repository_iam_policy(project=my_repo["project"],
/// location=my_repo["location"],
/// repository=my_repo["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.ArtifactRegistry.GetRepositoryIamPolicy.Invoke(new()
/// {
/// Project = my_repo.Project,
/// Location = my_repo.Location,
/// Repository = my_repo.Name,
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
/// _, err := artifactregistry.LookupRepositoryIamPolicy(ctx, &artifactregistry.LookupRepositoryIamPolicyArgs{
/// Project:    pulumi.StringRef(my_repo.Project),
/// Location:   pulumi.StringRef(my_repo.Location),
/// Repository: my_repo.Name,
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
/// import com.pulumi.gcp.artifactregistry.inputs.GetRepositoryIamPolicyArgs;
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
/// final var policy = ArtifactregistryFunctions.getRepositoryIamPolicy(GetRepositoryIamPolicyArgs.builder()
/// .project(my_repo.project())
/// .location(my_repo.location())
/// .repository(my_repo.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:artifactregistry:getRepositoryIamPolicy
/// arguments:
/// project: ${["my-repo"].project}
/// location: ${["my-repo"].location}
/// repository: ${["my-repo"].name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRepositoryIamPolicyResult> getRepositoryIamPolicy(
  GetRepositoryIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getRepositoryIamPolicy:getRepositoryIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyResult.fromMap(result);
}
