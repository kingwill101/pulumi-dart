import 'package:pulumi/pulumi.dart';
import 'get_nat_gateway_args.dart';
import 'get_nat_gateway_result.dart';

/// Provides details about a specific VPC NAT Gateway.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = aws.ec2.getNatGateway({
/// subnetId: _public.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.ec2.get_nat_gateway(subnet_id=public["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = Aws.Ec2.GetNatGateway.Invoke(new()
/// {
/// SubnetId = @public.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.LookupNatGateway(ctx, &ec2.LookupNatGatewayArgs{
/// SubnetId: pulumi.StringRef(public.Id),
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetNatGatewayArgs;
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
/// final var default = Ec2Functions.getNatGateway(GetNatGatewayArgs.builder()
/// .subnetId(public_.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// default:
/// fn::invoke:
/// function: aws:ec2:getNatGateway
/// arguments:
/// subnetId: ${public.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With tags
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = aws.ec2.getNatGateway({
/// subnetId: _public.id,
/// tags: {
/// Name: "gw NAT",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.ec2.get_nat_gateway(subnet_id=public["id"],
/// tags={
/// "Name": "gw NAT",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = Aws.Ec2.GetNatGateway.Invoke(new()
/// {
/// SubnetId = @public.Id,
/// Tags =
/// {
/// { "Name", "gw NAT" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.LookupNatGateway(ctx, &ec2.LookupNatGatewayArgs{
/// SubnetId: pulumi.StringRef(public.Id),
/// Tags: map[string]interface{}{
/// "Name": "gw NAT",
/// },
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetNatGatewayArgs;
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
/// final var default = Ec2Functions.getNatGateway(GetNatGatewayArgs.builder()
/// .subnetId(public_.id())
/// .tags(Map.of("Name", "gw NAT"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// default:
/// fn::invoke:
/// function: aws:ec2:getNatGateway
/// arguments:
/// subnetId: ${public.id}
/// tags:
/// Name: gw NAT
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNatGatewayResult> getNatGateway(
  GetNatGatewayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNatGateway:getNatGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNatGatewayResult.fromMap(result);
}
