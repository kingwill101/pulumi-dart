import 'package:pulumi/pulumi.dart';
import 'get_local_gateway_virtual_interface_group_args.dart';
import 'get_local_gateway_virtual_interface_group_result.dart';

/// Provides details about an EC2 Local Gateway Virtual Interface Group. More information can be found in the [Outposts User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#routing).
Future<GetLocalGatewayVirtualInterfaceGroupResult>
    getLocalGatewayVirtualInterfaceGroup(
  GetLocalGatewayVirtualInterfaceGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLocalGatewayVirtualInterfaceGroup:getLocalGatewayVirtualInterfaceGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLocalGatewayVirtualInterfaceGroupResult.fromMap(result);
}
