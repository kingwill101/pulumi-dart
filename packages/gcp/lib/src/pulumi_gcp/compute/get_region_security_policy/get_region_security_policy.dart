import 'package:pulumi/pulumi.dart';
import 'get_region_security_policy_args.dart';
import 'get_region_security_policy_result.dart';

/// Use this data source to get information about a Compute Region Security Policy. For more details, see the [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionSecurityPolicies).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getRegionSecurityPolicy({
/// name: "my-region-security-policy",
/// region: "us-west2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_region_security_policy(name="my-region-security-policy",
/// region="us-west2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = Gcp.Compute.GetRegionSecurityPolicy.Invoke(new()
/// {
/// Name = "my-region-security-policy",
/// Region = "us-west2",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.LookupRegionSecurityPolicy(ctx, &compute.LookupRegionSecurityPolicyArgs{
/// Name:   "my-region-security-policy",
/// Region: pulumi.StringRef("us-west2"),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionSecurityPolicyArgs;
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
/// final var default = ComputeFunctions.getRegionSecurityPolicy(GetRegionSecurityPolicyArgs.builder()
/// .name("my-region-security-policy")
/// .region("us-west2")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// default:
/// fn::invoke:
/// function: gcp:compute:getRegionSecurityPolicy
/// arguments:
/// name: my-region-security-policy
/// region: us-west2
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionSecurityPolicyResult> getRegionSecurityPolicy(
  GetRegionSecurityPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionSecurityPolicy:getRegionSecurityPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionSecurityPolicyResult.fromMap(result);
}
