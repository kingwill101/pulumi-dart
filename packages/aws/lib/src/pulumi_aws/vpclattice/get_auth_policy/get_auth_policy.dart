import 'package:pulumi/pulumi.dart';
import 'get_auth_policy_args.dart';
import 'get_auth_policy_result.dart';

/// Data source for managing an AWS VPC Lattice Auth Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.vpclattice.getAuthPolicy({
/// resourceIdentifier: testAwsVpclatticeAuthPolicy.resourceIdentifier,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.vpclattice.get_auth_policy(resource_identifier=test_aws_vpclattice_auth_policy["resourceIdentifier"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.VpcLattice.GetAuthPolicy.Invoke(new()
/// {
/// ResourceIdentifier = testAwsVpclatticeAuthPolicy.ResourceIdentifier,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vpclattice.LookupAuthPolicy(ctx, &vpclattice.LookupAuthPolicyArgs{
/// ResourceIdentifier: testAwsVpclatticeAuthPolicy.ResourceIdentifier,
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
/// import com.pulumi.aws.vpclattice.VpclatticeFunctions;
/// import com.pulumi.aws.vpclattice.inputs.GetAuthPolicyArgs;
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
/// final var test = VpclatticeFunctions.getAuthPolicy(GetAuthPolicyArgs.builder()
/// .resourceIdentifier(testAwsVpclatticeAuthPolicy.resourceIdentifier())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:vpclattice:getAuthPolicy
/// arguments:
/// resourceIdentifier: ${testAwsVpclatticeAuthPolicy.resourceIdentifier}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAuthPolicyResult> getAuthPolicy(
  GetAuthPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpclattice/getAuthPolicy:getAuthPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAuthPolicyResult.fromMap(result);
}
