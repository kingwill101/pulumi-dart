import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateway_virtual_interface_args.dart';
import 'get_local_gateway_virtual_interface_result.dart';

/// Provides details about an EC2 Local Gateway Virtual Interface. More information can be found in the [Outposts User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#routing).
Future<GetLocalGatewayVirtualInterfaceResult> getLocalGatewayVirtualInterface(
  GetLocalGatewayVirtualInterfaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLocalGatewayVirtualInterface:getLocalGatewayVirtualInterface',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalGatewayVirtualInterfaceResult.fromMap(result);
}
