import 'package:pulumi/pulumi.dart';
import 'get_local_gateway_virtual_interface_args.dart';
import 'get_local_gateway_virtual_interface_result.dart';

/// Provides details about an EC2 Local Gateway Virtual Interface. More information can be found in the [Outposts User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#routing).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = .reduce((__obj, [__key, __value]) => ({ ...__obj, [__key]: aws.ec2.getLocalGatewayVirtualInterface({
/// id: __value,
/// }) }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = {__key: aws.ec2.get_local_gateway_virtual_interface(id=__value) for __key, __value in example_aws_ec2_local_gateway_virtual_interface_group["localGatewayVirtualInterfaceIds"]}
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = .ToDictionary(item => {
/// var __key = item.Key;
/// return __key;
/// }, item => {
/// var __value = item.Value;
/// return Aws.Ec2.GetLocalGatewayVirtualInterface.Invoke(new()
/// {
/// Id = __value,
/// });
/// });
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetLocalGatewayVirtualInterfaceResult> getLocalGatewayVirtualInterface(
  GetLocalGatewayVirtualInterfaceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLocalGatewayVirtualInterface:getLocalGatewayVirtualInterface',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLocalGatewayVirtualInterfaceResult.fromMap(result);
}
