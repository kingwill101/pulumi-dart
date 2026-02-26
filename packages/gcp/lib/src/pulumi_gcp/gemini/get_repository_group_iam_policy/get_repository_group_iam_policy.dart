import 'package:pulumi/pulumi.dart';
import 'get_repository_group_iam_policy_args.dart';
import 'get_repository_group_iam_policy_result.dart';

/// Retrieves the current IAM policy data for repositorygroup
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.gemini.getRepositoryGroupIamPolicy({
/// project: example.project,
/// location: example.location,
/// codeRepositoryIndex: example.codeRepositoryIndex,
/// repositoryGroupId: example.repositoryGroupId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.gemini.get_repository_group_iam_policy(project=example["project"],
/// location=example["location"],
/// code_repository_index=example["codeRepositoryIndex"],
/// repository_group_id=example["repositoryGroupId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Gemini.GetRepositoryGroupIamPolicy.Invoke(new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// CodeRepositoryIndex = example.CodeRepositoryIndex,
/// RepositoryGroupId = example.RepositoryGroupId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gemini"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gemini.LookupRepositoryGroupIamPolicy(ctx, &gemini.LookupRepositoryGroupIamPolicyArgs{
/// Project:             pulumi.StringRef(example.Project),
/// Location:            pulumi.StringRef(example.Location),
/// CodeRepositoryIndex: example.CodeRepositoryIndex,
/// RepositoryGroupId:   example.RepositoryGroupId,
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
/// import com.pulumi.gcp.gemini.GeminiFunctions;
/// import com.pulumi.gcp.gemini.inputs.GetRepositoryGroupIamPolicyArgs;
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
/// final var policy = GeminiFunctions.getRepositoryGroupIamPolicy(GetRepositoryGroupIamPolicyArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .codeRepositoryIndex(example.codeRepositoryIndex())
/// .repositoryGroupId(example.repositoryGroupId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:gemini:getRepositoryGroupIamPolicy
/// arguments:
/// project: ${example.project}
/// location: ${example.location}
/// codeRepositoryIndex: ${example.codeRepositoryIndex}
/// repositoryGroupId: ${example.repositoryGroupId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRepositoryGroupIamPolicyResult> getRepositoryGroupIamPolicy(
  GetRepositoryGroupIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gemini/getRepositoryGroupIamPolicy:getRepositoryGroupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryGroupIamPolicyResult.fromMap(result);
}
