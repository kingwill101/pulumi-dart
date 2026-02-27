import 'package:pulumi/pulumi.dart';
import 'get_local_gateway_virtual_interface_groups_args.dart';
import 'get_local_gateway_virtual_interface_groups_result.dart';

/// Provides details about multiple EC2 Local Gateway Virtual Interface Groups, such as identifiers. More information can be found in the [Outposts User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#routing).
Future<GetLocalGatewayVirtualInterfaceGroupsResult>
    getLocalGatewayVirtualInterfaceGroups(
  GetLocalGatewayVirtualInterfaceGroupsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLocalGatewayVirtualInterfaceGroups:getLocalGatewayVirtualInterfaceGroups',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLocalGatewayVirtualInterfaceGroupsResult.fromMap(result);
}
