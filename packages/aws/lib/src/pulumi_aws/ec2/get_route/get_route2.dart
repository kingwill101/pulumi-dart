import 'package:pulumi/pulumi.dart';
import 'get_route_args2.dart';
import 'get_route_result2.dart';

/// <span pulumi-lang-nodejs="`aws.ec2.Route`" pulumi-lang-dotnet="`aws.ec2.Route`" pulumi-lang-go="`ec2.Route`" pulumi-lang-python="`ec2.Route`" pulumi-lang-yaml="`aws.ec2.Route`" pulumi-lang-java="`aws.ec2.Route`">`aws.ec2.Route`</span> provides details about a specific Route.
///
/// This resource can prove useful when finding the resource associated with a CIDR. For example, finding the peering connection associated with a CIDR value.
///
/// ## Example Usage
///
/// The following example shows how one might use a CIDR value to find a network interface id and use this to create a data source of that network interface.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const subnetId = config.requireObject<any>("subnetId");
/// const selected = aws.ec2.getRouteTable({
/// subnetId: subnetId,
/// });
/// const route = aws.ec2.getRoute({
/// routeTableId: selectedAwsRouteTable.id,
/// destinationCidrBlock: "10.0.1.0/24",
/// });
/// const _interface = route.then(route => aws.ec2.getNetworkInterface({
/// id: route.networkInterfaceId,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// subnet_id = config.require_object("subnetId")
/// selected = aws.ec2.get_route_table(subnet_id=subnet_id)
/// route = aws.ec2.get_route(route_table_id=selected_aws_route_table["id"],
/// destination_cidr_block="10.0.1.0/24")
/// interface = aws.ec2.get_network_interface(id=route.network_interface_id)
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
/// var subnetId = config.RequireObject<dynamic>("subnetId");
/// var selected = Aws.Ec2.GetRouteTable.Invoke(new()
/// {
/// SubnetId = subnetId,
/// });
///
/// var route = Aws.Ec2.GetRoute.Invoke(new()
/// {
/// RouteTableId = selectedAwsRouteTable.Id,
/// DestinationCidrBlock = "10.0.1.0/24",
/// });
///
/// var @interface = Aws.Ec2.GetNetworkInterface.Invoke(new()
/// {
/// Id = route.Apply(getRouteResult => getRouteResult.NetworkInterfaceId),
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
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// subnetId := cfg.RequireObject("subnetId")
/// _, err := ec2.LookupRouteTable(ctx, &ec2.LookupRouteTableArgs{
/// SubnetId: pulumi.StringRef(subnetId),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// route, err := ec2.LookupRoute(ctx, &ec2.LookupRouteArgs{
/// RouteTableId:         selectedAwsRouteTable.Id,
/// DestinationCidrBlock: pulumi.StringRef("10.0.1.0/24"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ec2.LookupNetworkInterface(ctx, &ec2.LookupNetworkInterfaceArgs{
/// Id: pulumi.StringRef(route.NetworkInterfaceId),
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
/// import com.pulumi.aws.ec2.inputs.GetRouteTableArgs;
/// import com.pulumi.aws.ec2.inputs.GetRouteArgs;
/// import com.pulumi.aws.ec2.inputs.GetNetworkInterfaceArgs;
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
/// final var subnetId = config.get("subnetId");
/// final var selected = Ec2Functions.getRouteTable(GetRouteTableArgs.builder()
/// .subnetId(subnetId)
/// .build());
///
/// final var route = Ec2Functions.getRoute(GetRouteArgs.builder()
/// .routeTableId(selectedAwsRouteTable.id())
/// .destinationCidrBlock("10.0.1.0/24")
/// .build());
///
/// final var interface = Ec2Functions.getNetworkInterface(GetNetworkInterfaceArgs.builder()
/// .id(route.networkInterfaceId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// configuration:
/// subnetId:
/// type: dynamic
/// variables:
/// selected:
/// fn::invoke:
/// function: aws:ec2:getRouteTable
/// arguments:
/// subnetId: ${subnetId}
/// route:
/// fn::invoke:
/// function: aws:ec2:getRoute
/// arguments:
/// routeTableId: ${selectedAwsRouteTable.id}
/// destinationCidrBlock: 10.0.1.0/24
/// interface:
/// fn::invoke:
/// function: aws:ec2:getNetworkInterface
/// arguments:
/// id: ${route.networkInterfaceId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRouteResult2> getRoute2(
  GetRouteArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getRoute:getRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouteResult2.fromMap(result);
}
