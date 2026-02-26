import 'package:pulumi/pulumi.dart';
import 'get_repository_iam_policy_args3.dart';
import 'get_repository_iam_policy_result3.dart';

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
/// const policy = gcp.securesourcemanager.getRepositoryIamPolicy({
/// project: _default.project,
/// location: _default.location,
/// repositoryId: _default.repositoryId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.securesourcemanager.get_repository_iam_policy(project=default["project"],
/// location=default["location"],
/// repository_id=default["repositoryId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.SecureSourceManager.GetRepositoryIamPolicy.Invoke(new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// RepositoryId = @default.RepositoryId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securesourcemanager.LookupRepositoryIamPolicy(ctx, &securesourcemanager.LookupRepositoryIamPolicyArgs{
/// Project:      pulumi.StringRef(_default.Project),
/// Location:     pulumi.StringRef(_default.Location),
/// RepositoryId: _default.RepositoryId,
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
/// import com.pulumi.gcp.securesourcemanager.SecuresourcemanagerFunctions;
/// import com.pulumi.gcp.securesourcemanager.inputs.GetRepositoryIamPolicyArgs;
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
/// final var policy = SecuresourcemanagerFunctions.getRepositoryIamPolicy(GetRepositoryIamPolicyArgs.builder()
/// .project(default_.project())
/// .location(default_.location())
/// .repositoryId(default_.repositoryId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:securesourcemanager:getRepositoryIamPolicy
/// arguments:
/// project: ${default.project}
/// location: ${default.location}
/// repositoryId: ${default.repositoryId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRepositoryIamPolicyResult3> getRepositoryIamPolicy3(
  GetRepositoryIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:securesourcemanager/getRepositoryIamPolicy:getRepositoryIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyResult3.fromMap(result);
}
