import 'package:pulumi/pulumi.dart';
import 'get_scope_iam_policy_args.dart';
import 'get_scope_iam_policy_result.dart';

/// Retrieves the current IAM policy data for scope
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.gkehub.getScopeIamPolicy({
/// project: scope.project,
/// scopeId: scope.scopeId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.gkehub.get_scope_iam_policy(project=scope["project"],
/// scope_id=scope["scopeId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.GkeHub.GetScopeIamPolicy.Invoke(new()
/// {
/// Project = scope.Project,
/// ScopeId = scope.ScopeId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkehub.LookupScopeIamPolicy(ctx, &gkehub.LookupScopeIamPolicyArgs{
/// Project: pulumi.StringRef(scope.Project),
/// ScopeId: scope.ScopeId,
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
/// import com.pulumi.gcp.gkehub.GkehubFunctions;
/// import com.pulumi.gcp.gkehub.inputs.GetScopeIamPolicyArgs;
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
/// final var policy = GkehubFunctions.getScopeIamPolicy(GetScopeIamPolicyArgs.builder()
/// .project(scope.project())
/// .scopeId(scope.scopeId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:gkehub:getScopeIamPolicy
/// arguments:
/// project: ${scope.project}
/// scopeId: ${scope.scopeId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetScopeIamPolicyResult> getScopeIamPolicy(
  GetScopeIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getScopeIamPolicy:getScopeIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetScopeIamPolicyResult.fromMap(result);
}
