import 'package:pulumi/pulumi.dart';
import 'get_repository_iam_policy_args4.dart';
import 'get_repository_iam_policy_result4.dart';

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
/// const policy = gcp.sourcerepo.getRepositoryIamPolicy({
/// project: my_repo.project,
/// repository: my_repo.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.sourcerepo.get_repository_iam_policy(project=my_repo["project"],
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
/// var policy = Gcp.SourceRepo.GetRepositoryIamPolicy.Invoke(new()
/// {
/// Project = my_repo.Project,
/// Repository = my_repo.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sourcerepo"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sourcerepo.LookupRepositoryIamPolicy(ctx, &sourcerepo.LookupRepositoryIamPolicyArgs{
/// Project:    pulumi.StringRef(my_repo.Project),
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
/// import com.pulumi.gcp.sourcerepo.SourcerepoFunctions;
/// import com.pulumi.gcp.sourcerepo.inputs.GetRepositoryIamPolicyArgs;
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
/// final var policy = SourcerepoFunctions.getRepositoryIamPolicy(GetRepositoryIamPolicyArgs.builder()
/// .project(my_repo.project())
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
/// function: gcp:sourcerepo:getRepositoryIamPolicy
/// arguments:
/// project: ${["my-repo"].project}
/// repository: ${["my-repo"].name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRepositoryIamPolicyResult4> getRepositoryIamPolicy4(
  GetRepositoryIamPolicyArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sourcerepo/getRepositoryIamPolicy:getRepositoryIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyResult4.fromMap(result);
}
