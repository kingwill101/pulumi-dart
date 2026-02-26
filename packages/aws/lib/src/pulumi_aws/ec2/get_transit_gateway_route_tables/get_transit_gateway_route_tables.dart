import 'package:pulumi/pulumi.dart';
import 'get_transit_gateway_route_tables_args.dart';
import 'get_transit_gateway_route_tables_result.dart';

/// Provides information for multiple EC2 Transit Gateway Route Tables, such as their identifiers.
///
/// ## Example Usage
///
/// The following shows outputting all Transit Gateway Route Table Ids.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
/// const example = await aws.ec2.getTransitGatewayRouteTables({});
/// return {
/// example: example.ids,
/// };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_transit_gateway_route_tables()
/// pulumi.export("example", example.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetTransitGatewayRouteTables.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["example"] = example.Apply(getTransitGatewayRouteTablesResult => getTransitGatewayRouteTablesResult.Ids),
/// };
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
/// example, err := ec2.GetTransitGatewayRouteTables(ctx, &ec2.GetTransitGatewayRouteTablesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("example", example.Ids)
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
/// import com.pulumi.aws.ec2.inputs.GetTransitGatewayRouteTablesArgs;
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
/// final var example = Ec2Functions.getTransitGatewayRouteTables(GetTransitGatewayRouteTablesArgs.builder()
/// .build());
///
/// ctx.export("example", example.ids());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2:getTransitGatewayRouteTables
/// arguments: {}
/// outputs:
/// example: ${example.ids}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTransitGatewayRouteTablesResult> getTransitGatewayRouteTables(
  GetTransitGatewayRouteTablesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getTransitGatewayRouteTables:getTransitGatewayRouteTables',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTransitGatewayRouteTablesResult.fromMap(result);
}
