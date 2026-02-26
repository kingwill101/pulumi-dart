import 'package:pulumi/pulumi.dart';
import 'get_hl7_v2_store_iam_policy_args.dart';
import 'get_hl7_v2_store_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Google Cloud Healthcare HL7v2 store.
///
/// ## example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.healthcare.getHl7V2StoreIamPolicy({
/// hl7V2StoreId: hl7V2Store.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.healthcare.get_hl7_v2_store_iam_policy(hl7_v2_store_id=hl7_v2_store["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = Gcp.Healthcare.GetHl7V2StoreIamPolicy.Invoke(new()
/// {
/// Hl7V2StoreId = hl7V2Store.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := healthcare.GetHl7V2StoreIamPolicy(ctx, &healthcare.GetHl7V2StoreIamPolicyArgs{
/// Hl7V2StoreId: hl7V2Store.Id,
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
/// import com.pulumi.gcp.healthcare.HealthcareFunctions;
/// import com.pulumi.gcp.healthcare.inputs.GetHl7V2StoreIamPolicyArgs;
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
/// final var foo = HealthcareFunctions.getHl7V2StoreIamPolicy(GetHl7V2StoreIamPolicyArgs.builder()
/// .hl7V2StoreId(hl7V2Store.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// foo:
/// fn::invoke:
/// function: gcp:healthcare:getHl7V2StoreIamPolicy
/// arguments:
/// hl7V2StoreId: ${hl7V2Store.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetHl7V2StoreIamPolicyResult> getHl7V2StoreIamPolicy(
  GetHl7V2StoreIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:healthcare/getHl7V2StoreIamPolicy:getHl7V2StoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHl7V2StoreIamPolicyResult.fromMap(result);
}
