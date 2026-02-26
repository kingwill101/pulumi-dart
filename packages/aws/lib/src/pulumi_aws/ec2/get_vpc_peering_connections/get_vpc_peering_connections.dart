import 'package:pulumi/pulumi.dart';
import 'get_vpc_peering_connections_args.dart';
import 'get_vpc_peering_connections_result.dart';

/// Use this data source to get IDs of Amazon VPC peering connections
/// To get more details on each connection, use the data resource<span pulumi-lang-nodejs=" aws.ec2.VpcPeeringConnection
/// " pulumi-lang-dotnet=" aws.ec2.VpcPeeringConnection
/// " pulumi-lang-go=" ec2.VpcPeeringConnection
/// " pulumi-lang-python=" ec2.VpcPeeringConnection
/// " pulumi-lang-yaml=" aws.ec2.VpcPeeringConnection
/// " pulumi-lang-java=" aws.ec2.VpcPeeringConnection
/// "> aws.ec2.VpcPeeringConnection
/// </span>
/// Note: To use this data source in a count, the resources should exist before trying to access
/// the data source.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Declare the data source
/// const pcs = aws.ec2.getVpcPeeringConnections({
/// filters: [{
/// name: "requester-vpc-info.vpc-id",
/// values: [foo.id],
/// }],
/// });
/// // get the details of each resource
/// const pc = .map(__index => (aws.ec2.getVpcPeeringConnection({
/// id: _arg0_.ids[__index],
/// })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Declare the data source
/// pcs = aws.ec2.get_vpc_peering_connections(filters=[{
/// "name": "requester-vpc-info.vpc-id",
/// "values": [foo["id"]],
/// }])
/// # get the details of each resource
/// pc = [aws.ec2.get_vpc_peering_connection(id=pcs.ids[__index]) for __index in len(pcs.ids).apply(lambda length: range(length))]
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
/// var pcs = Aws.Ec2.GetVpcPeeringConnections.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetVpcPeeringConnectionsFilterInputArgs
/// {
/// Name = "requester-vpc-info.vpc-id",
/// Values = new[]
/// {
/// foo.Id,
/// },
/// },
/// },
/// });
///
/// // get the details of each resource
/// var pc = ;
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVpcPeeringConnectionsResult> getVpcPeeringConnections(
  GetVpcPeeringConnectionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcPeeringConnections:getVpcPeeringConnections',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcPeeringConnectionsResult.fromMap(result);
}
