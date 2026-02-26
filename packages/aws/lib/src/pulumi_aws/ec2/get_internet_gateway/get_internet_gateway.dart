import 'package:pulumi/pulumi.dart';
import 'get_internet_gateway_args.dart';
import 'get_internet_gateway_result.dart';

/// <span pulumi-lang-nodejs="`aws.ec2.InternetGateway`" pulumi-lang-dotnet="`aws.ec2.InternetGateway`" pulumi-lang-go="`ec2.InternetGateway`" pulumi-lang-python="`ec2.InternetGateway`" pulumi-lang-yaml="`aws.ec2.InternetGateway`" pulumi-lang-java="`aws.ec2.InternetGateway`">`aws.ec2.InternetGateway`</span> provides details about a specific Internet Gateway.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const vpcId = config.requireObject<any>("vpcId");
/// const _default = aws.ec2.getInternetGateway({
/// filters: [{
/// name: "attachment.vpc-id",
/// values: [vpcId],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// vpc_id = config.require_object("vpcId")
/// default = aws.ec2.get_internet_gateway(filters=[{
/// "name": "attachment.vpc-id",
/// "values": [vpc_id],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var config = new Config();
/// var vpcId = config.RequireObject<dynamic>("vpcId");
/// var @default = Aws.Ec2.GetInternetGateway.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetInternetGatewayFilterInputArgs
/// {
/// Name = "attachment.vpc-id",
/// Values = new[]
/// {
/// vpcId,
/// },
/// },
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
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// vpcId := cfg.RequireObject("vpcId")
/// _, err := ec2.LookupInternetGateway(ctx, &ec2.LookupInternetGatewayArgs{
/// Filters: []ec2.GetInternetGatewayFilter{
/// {
/// Name: "attachment.vpc-id",
/// Values: interface{}{
/// vpcId,
/// },
/// },
/// },
/// }, nil);
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
/// import com.pulumi.aws.ec2.inputs.GetInternetGatewayArgs;
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
/// final var config = ctx.config();
/// final var vpcId = config.get("vpcId");
/// final var default = Ec2Functions.getInternetGateway(GetInternetGatewayArgs.builder()
/// .filters(GetInternetGatewayFilterArgs.builder()
/// .name("attachment.vpc-id")
/// .values(vpcId)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// configuration:
/// vpcId:
/// type: dynamic
/// variables:
/// default:
/// fn::invoke:
/// function: aws:ec2:getInternetGateway
/// arguments:
/// filters:
/// - name: attachment.vpc-id
/// values:
/// - ${vpcId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInternetGatewayResult> getInternetGateway(
  GetInternetGatewayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInternetGateway:getInternetGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInternetGatewayResult.fromMap(result);
}
