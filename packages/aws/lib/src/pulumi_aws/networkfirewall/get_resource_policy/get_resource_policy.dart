import 'package:pulumi/pulumi.dart';
import 'get_resource_policy_args.dart';
import 'get_resource_policy_result.dart';

/// Retrieve information about a Network Firewall resource policy.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkfirewall.getResourcePolicy({
/// resourceArn: resourcePolicyArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.get_resource_policy(resource_arn=resource_policy_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.NetworkFirewall.GetResourcePolicy.Invoke(new()
/// {
/// ResourceArn = resourcePolicyArn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkfirewall.LookupResourcePolicy(ctx, &networkfirewall.LookupResourcePolicyArgs{
/// ResourceArn: resourcePolicyArn,
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
/// import com.pulumi.aws.networkfirewall.NetworkfirewallFunctions;
/// import com.pulumi.aws.networkfirewall.inputs.GetResourcePolicyArgs;
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
/// final var example = NetworkfirewallFunctions.getResourcePolicy(GetResourcePolicyArgs.builder()
/// .resourceArn(resourcePolicyArn)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:networkfirewall:getResourcePolicy
/// arguments:
/// resourceArn: ${resourcePolicyArn}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetResourcePolicyResult> getResourcePolicy(
  GetResourcePolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkfirewall/getResourcePolicy:getResourcePolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyResult.fromMap(result);
}
