import 'package:pulumi/pulumi.dart';
import 'get_regional_secret_iam_policy_args.dart';
import 'get_regional_secret_iam_policy_result.dart';

/// Retrieves the current IAM policy data for regionalsecret
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.secretmanager.getRegionalSecretIamPolicy({
/// project: regional_secret_basic.project,
/// location: regional_secret_basic.location,
/// secretId: regional_secret_basic.secretId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.secretmanager.get_regional_secret_iam_policy(project=regional_secret_basic["project"],
/// location=regional_secret_basic["location"],
/// secret_id=regional_secret_basic["secretId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.SecretManager.GetRegionalSecretIamPolicy.Invoke(new()
/// {
/// Project = regional_secret_basic.Project,
/// Location = regional_secret_basic.Location,
/// SecretId = regional_secret_basic.SecretId,
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
/// _, err := secretmanager.LookupRegionalSecretIamPolicy(ctx, &secretmanager.LookupRegionalSecretIamPolicyArgs{
/// Project:  pulumi.StringRef(regional_secret_basic.Project),
/// Location: pulumi.StringRef(regional_secret_basic.Location),
/// SecretId: regional_secret_basic.SecretId,
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
/// import com.pulumi.gcp.secretmanager.inputs.GetRegionalSecretIamPolicyArgs;
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
/// final var policy = SecretmanagerFunctions.getRegionalSecretIamPolicy(GetRegionalSecretIamPolicyArgs.builder()
/// .project(regional_secret_basic.project())
/// .location(regional_secret_basic.location())
/// .secretId(regional_secret_basic.secretId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:secretmanager:getRegionalSecretIamPolicy
/// arguments:
/// project: ${["regional-secret-basic"].project}
/// location: ${["regional-secret-basic"].location}
/// secretId: ${["regional-secret-basic"].secretId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionalSecretIamPolicyResult> getRegionalSecretIamPolicy(
  GetRegionalSecretIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getRegionalSecretIamPolicy:getRegionalSecretIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionalSecretIamPolicyResult.fromMap(result);
}
