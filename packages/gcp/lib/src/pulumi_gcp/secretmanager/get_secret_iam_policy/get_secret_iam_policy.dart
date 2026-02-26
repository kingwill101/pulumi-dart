import 'package:pulumi/pulumi.dart';
import 'get_secret_iam_policy_args.dart';
import 'get_secret_iam_policy_result.dart';

/// Retrieves the current IAM policy data for secret
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.secretmanager.getSecretIamPolicy({
/// project: secret_basic.project,
/// secretId: secret_basic.secretId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.secretmanager.get_secret_iam_policy(project=secret_basic["project"],
/// secret_id=secret_basic["secretId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.SecretManager.GetSecretIamPolicy.Invoke(new()
/// {
/// Project = secret_basic.Project,
/// SecretId = secret_basic.SecretId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := secretmanager.LookupSecretIamPolicy(ctx, &secretmanager.LookupSecretIamPolicyArgs{
/// Project:  pulumi.StringRef(secret_basic.Project),
/// SecretId: secret_basic.SecretId,
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
/// import com.pulumi.gcp.secretmanager.SecretmanagerFunctions;
/// import com.pulumi.gcp.secretmanager.inputs.GetSecretIamPolicyArgs;
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
/// final var policy = SecretmanagerFunctions.getSecretIamPolicy(GetSecretIamPolicyArgs.builder()
/// .project(secret_basic.project())
/// .secretId(secret_basic.secretId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:secretmanager:getSecretIamPolicy
/// arguments:
/// project: ${["secret-basic"].project}
/// secretId: ${["secret-basic"].secretId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSecretIamPolicyResult> getSecretIamPolicy(
  GetSecretIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getSecretIamPolicy:getSecretIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecretIamPolicyResult.fromMap(result);
}
