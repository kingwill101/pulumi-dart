import 'package:pulumi/pulumi.dart';
import 'get_vpc_peering_connection_args.dart';
import 'get_vpc_peering_connection_result.dart';

/// The VPC Peering Connection data source provides details about
/// a specific VPC peering connection.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Declare the data source
/// const pc = aws.ec2.getVpcPeeringConnection({
/// vpcId: foo.id,
/// peerCidrBlock: "10.0.1.0/22",
/// });
/// // Create a route table
/// const rt = new aws.ec2.RouteTable("rt", {vpcId: foo.id});
/// // Create a route
/// const r = new aws.ec2.Route("r", {
/// routeTableId: rt.id,
/// destinationCidrBlock: pc.then(pc => pc.peerCidrBlock),
/// vpcPeeringConnectionId: pc.then(pc => pc.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Declare the data source
/// pc = aws.ec2.get_vpc_peering_connection(vpc_id=foo["id"],
/// peer_cidr_block="10.0.1.0/22")
/// # Create a route table
/// rt = aws.ec2.RouteTable("rt", vpc_id=foo["id"])
/// # Create a route
/// r = aws.ec2.Route("r",
/// route_table_id=rt.id,
/// destination_cidr_block=pc.peer_cidr_block,
/// vpc_peering_connection_id=pc.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Declare the data source
/// var pc = Aws.Ec2.GetVpcPeeringConnection.Invoke(new()
/// {
/// VpcId = foo.Id,
/// PeerCidrBlock = "10.0.1.0/22",
/// });
///
/// // Create a route table
/// var rt = new Aws.Ec2.RouteTable("rt", new()
/// {
/// VpcId = foo.Id,
/// });
///
/// // Create a route
/// var r = new Aws.Ec2.Route("r", new()
/// {
/// RouteTableId = rt.Id,
/// DestinationCidrBlock = pc.Apply(getVpcPeeringConnectionResult => getVpcPeeringConnectionResult.PeerCidrBlock),
/// VpcPeeringConnectionId = pc.Apply(getVpcPeeringConnectionResult => getVpcPeeringConnectionResult.Id),
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
/// // Declare the data source
/// pc, err := ec2.LookupVpcPeeringConnection(ctx, &ec2.LookupVpcPeeringConnectionArgs{
/// VpcId:         pulumi.StringRef(foo.Id),
/// PeerCidrBlock: pulumi.StringRef("10.0.1.0/22"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Create a route table
/// rt, err := ec2.NewRouteTable(ctx, "rt", &ec2.RouteTableArgs{
/// VpcId: pulumi.Any(foo.Id),
/// })
/// if err != nil {
/// return err
/// }
/// // Create a route
/// _, err = ec2.NewRoute(ctx, "r", &ec2.RouteArgs{
/// RouteTableId:           rt.ID(),
/// DestinationCidrBlock:   pulumi.String(pc.PeerCidrBlock),
/// VpcPeeringConnectionId: pulumi.String(pc.Id),
/// })
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
/// import com.pulumi.aws.ec2.inputs.GetVpcPeeringConnectionArgs;
/// import com.pulumi.aws.ec2.RouteTable;
/// import com.pulumi.aws.ec2.RouteTableArgs;
/// import com.pulumi.aws.ec2.Route;
/// import com.pulumi.aws.ec2.RouteArgs;
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
/// // Declare the data source
/// final var pc = Ec2Functions.getVpcPeeringConnection(GetVpcPeeringConnectionArgs.builder()
/// .vpcId(foo.id())
/// .peerCidrBlock("10.0.1.0/22")
/// .build());
///
/// // Create a route table
/// var rt = new RouteTable("rt", RouteTableArgs.builder()
/// .vpcId(foo.id())
/// .build());
///
/// // Create a route
/// var r = new Route("r", RouteArgs.builder()
/// .routeTableId(rt.id())
/// .destinationCidrBlock(pc.peerCidrBlock())
/// .vpcPeeringConnectionId(pc.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Create a route table
/// rt:
/// type: aws:ec2:RouteTable
/// properties:
/// vpcId: ${foo.id}
/// # Create a route
/// r:
/// type: aws:ec2:Route
/// properties:
/// routeTableId: ${rt.id}
/// destinationCidrBlock: ${pc.peerCidrBlock}
/// vpcPeeringConnectionId: ${pc.id}
/// variables:
/// # Declare the data source
/// pc:
/// fn::invoke:
/// function: aws:ec2:getVpcPeeringConnection
/// arguments:
/// vpcId: ${foo.id}
/// peerCidrBlock: 10.0.1.0/22
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVpcPeeringConnectionResult> getVpcPeeringConnection(
  GetVpcPeeringConnectionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcPeeringConnection:getVpcPeeringConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcPeeringConnectionResult.fromMap(result);
}
