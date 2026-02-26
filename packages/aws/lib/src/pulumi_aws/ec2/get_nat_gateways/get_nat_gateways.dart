import 'package:pulumi/pulumi.dart';
import 'get_nat_gateways_args.dart';
import 'get_nat_gateways_result.dart';

/// This resource can be useful for getting back a list of NAT gateway ids to be referenced elsewhere.
///
/// ## Example Usage
///
/// The following returns all NAT gateways in a specified VPC that are marked as available
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ngws = aws.ec2.getNatGateways({
/// vpcId: vpcId,
/// filters: [{
/// name: "state",
/// values: ["available"],
/// }],
/// });
/// const ngw = .map(__index => (aws.ec2.getNatGateway({
/// id: _arg0_.ids[__index],
/// })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ngws = aws.ec2.get_nat_gateways(vpc_id=vpc_id,
/// filters=[{
/// "name": "state",
/// "values": ["available"],
/// }])
/// ngw = [aws.ec2.get_nat_gateway(id=ngws.ids[__index]) for __index in len(ngws.ids).apply(lambda length: range(length))]
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var ngws = Aws.Ec2.GetNatGateways.Invoke(new()
/// {
/// VpcId = vpcId,
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetNatGatewaysFilterInputArgs
/// {
/// Name = "state",
/// Values = new[]
/// {
/// "available",
/// },
/// },
/// },
/// });
///
/// var ngw = ;
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNatGatewaysResult> getNatGateways(
  GetNatGatewaysArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNatGateways:getNatGateways',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNatGatewaysResult.fromMap(result);
}
