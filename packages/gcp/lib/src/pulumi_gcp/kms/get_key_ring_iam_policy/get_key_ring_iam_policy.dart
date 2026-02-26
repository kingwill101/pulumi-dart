import 'package:pulumi/pulumi.dart';
import 'get_key_ring_iam_policy_args.dart';
import 'get_key_ring_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Google Cloud KMS key ring.
///
/// ## example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testKeyRingIamPolicy = gcp.kms.getKeyRingIamPolicy({
/// keyRingId: "{project_id}/{location_name}/{key_ring_name}",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_key_ring_iam_policy = gcp.kms.get_key_ring_iam_policy(key_ring_id="{project_id}/{location_name}/{key_ring_name}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testKeyRingIamPolicy = Gcp.Kms.GetKeyRingIamPolicy.Invoke(new()
/// {
/// KeyRingId = "{project_id}/{location_name}/{key_ring_name}",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kms.GetKeyRingIamPolicy(ctx, &kms.GetKeyRingIamPolicyArgs{
/// KeyRingId: "{project_id}/{location_name}/{key_ring_name}",
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKeyRingIamPolicyArgs;
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
/// final var testKeyRingIamPolicy = KmsFunctions.getKeyRingIamPolicy(GetKeyRingIamPolicyArgs.builder()
/// .keyRingId("{project_id}/{location_name}/{key_ring_name}")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// testKeyRingIamPolicy:
/// fn::invoke:
/// function: gcp:kms:getKeyRingIamPolicy
/// arguments:
/// keyRingId: '{project_id}/{location_name}/{key_ring_name}'
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetKeyRingIamPolicyResult> getKeyRingIamPolicy(
  GetKeyRingIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKeyRingIamPolicy:getKeyRingIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKeyRingIamPolicyResult.fromMap(result);
}
