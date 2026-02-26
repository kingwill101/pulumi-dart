import 'package:pulumi/pulumi.dart';
import 'get_iam_policy_args4.dart';
import 'get_iam_policy_result4.dart';

/// Retrieves the current IAM policy data for a service account.
///
/// ## example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.serviceaccount.getIamPolicy({
/// serviceAccountId: testAccount.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.serviceaccount.get_iam_policy(service_account_id=test_account["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = Gcp.ServiceAccount.GetIamPolicy.Invoke(new()
/// {
/// ServiceAccountId = testAccount.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := serviceaccount.GetIamPolicy(ctx, &serviceaccount.GetIamPolicyArgs{
/// ServiceAccountId: testAccount.Name,
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
/// import com.pulumi.gcp.serviceaccount.ServiceaccountFunctions;
/// import com.pulumi.gcp.serviceaccount.inputs.GetIamPolicyArgs;
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
/// final var foo = ServiceaccountFunctions.getIamPolicy(GetIamPolicyArgs.builder()
/// .serviceAccountId(testAccount.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// foo:
/// fn::invoke:
/// function: gcp:serviceaccount:getIamPolicy
/// arguments:
/// serviceAccountId: ${testAccount.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetIamPolicyResult4> getIamPolicy4(
  GetIamPolicyArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getIamPolicy:getIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIamPolicyResult4.fromMap(result);
}
