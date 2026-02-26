import 'package:pulumi/pulumi.dart';
import 'get_route_tables_args.dart';
import 'get_route_tables_result.dart';

/// This resource can be useful for getting back a list of route table ids to be referenced elsewhere.
///
/// ## Example Usage
///
/// The following adds a route for a particular cidr block to every (private
/// kops) route table in a specified vpc to use a particular vpc peering
/// connection.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const rts = aws.ec2.getRouteTables({
/// vpcId: vpcId,
/// filters: [{
/// name: "tag:kubernetes.io/kops/role",
/// values: ["private*"],
/// }],
/// });
/// const r: aws.ec2.Route[] = [];
/// rts.then(rts => rts.ids).length.apply(rangeBody => {
/// for (const range = {value: 0}; range.value < rangeBody; range.value++) {
/// r.push(new aws.ec2.Route(`r-${range.value}`, {
/// routeTableId: rts.then(rts => rts.ids[range.value]),
/// destinationCidrBlock: "10.0.0.0/22",
/// vpcPeeringConnectionId: "pcx-0e9a7a9ecd137dc54",
/// }));
/// }
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// rts = aws.ec2.get_route_tables(vpc_id=vpc_id,
/// filters=[{
/// "name": "tag:kubernetes.io/kops/role",
/// "values": ["private*"],
/// }])
/// r = []
/// def create_r(range_body):
/// for range in [{"value": i} for i in range(0, range_body)]:
/// r.append(aws.ec2.Route(f"r-{range['value']}",
/// route_table_id=rts.ids[range["value"]],
/// destination_cidr_block="10.0.0.0/22",
/// vpc_peering_connection_id="pcx-0e9a7a9ecd137dc54"))
///
/// (len(rts.ids)).apply(create_r)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var rts = Aws.Ec2.GetRouteTables.Invoke(new()
/// {
/// VpcId = vpcId,
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetRouteTablesFilterInputArgs
/// {
/// Name = "tag:kubernetes.io/kops/role",
/// Values = new[]
/// {
/// "private*",
/// },
/// },
/// },
/// });
///
/// var r = new List<Aws.Ec2.Route>();
/// for (var rangeIndex = 0; rangeIndex < rts.Apply(getRouteTablesResult => getRouteTablesResult.Ids).Length; rangeIndex++)
/// {
/// var range = new { Value = rangeIndex };
/// r.Add(new Aws.Ec2.Route($"r-{range.Value}", new()
/// {
/// RouteTableId = rts.Apply(getRouteTablesResult => getRouteTablesResult.Ids)[range.Value],
/// DestinationCidrBlock = "10.0.0.0/22",
/// VpcPeeringConnectionId = "pcx-0e9a7a9ecd137dc54",
/// }));
/// }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// rts, err := ec2.GetRouteTables(ctx, &ec2.GetRouteTablesArgs{
/// VpcId: pulumi.StringRef(vpcId),
/// Filters: []ec2.GetRouteTablesFilter{
/// {
/// Name: "tag:kubernetes.io/kops/role",
/// Values: []string{
/// "private*",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// var r []*ec2.Route
/// for index := 0; index < int(len(rts.Ids)); index++ {
/// key0 := index
/// val0 := index
/// __res, err := ec2.NewRoute(ctx, fmt.Sprintf("r-%v", key0), &ec2.RouteArgs{
/// RouteTableId:           pulumi.String(rts.Ids[val0]),
/// DestinationCidrBlock:   pulumi.String("10.0.0.0/22"),
/// VpcPeeringConnectionId: pulumi.String("pcx-0e9a7a9ecd137dc54"),
/// })
/// if err != nil {
/// return err
/// }
/// r = append(r, __res)
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
/// import com.pulumi.aws.ec2.inputs.GetRouteTablesArgs;
/// import com.pulumi.aws.ec2.Route;
/// import com.pulumi.aws.ec2.RouteArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
/// final var rts = Ec2Functions.getRouteTables(GetRouteTablesArgs.builder()
/// .vpcId(vpcId)
/// .filters(GetRouteTablesFilterArgs.builder()
/// .name("tag:kubernetes.io/kops/role")
/// .values("private*")
/// .build())
/// .build());
///
/// for (var i = 0; i < rts.ids().length(); i++) {
/// new Route("r-" + i, RouteArgs.builder()
/// .routeTableId(rts.ids()[range.value()])
/// .destinationCidrBlock("10.0.0.0/22")
/// .vpcPeeringConnectionId("pcx-0e9a7a9ecd137dc54")
/// .build());
///
///
/// }
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRouteTablesResult> getRouteTables(
  GetRouteTablesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getRouteTables:getRouteTables',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouteTablesResult.fromMap(result);
}
