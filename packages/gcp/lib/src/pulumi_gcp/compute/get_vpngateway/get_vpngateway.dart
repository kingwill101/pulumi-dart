import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpngateway_args.dart';
import 'get_vpngateway_result.dart';

/// Get a VPN gateway within GCE from its name.
Future<GetVPNGatewayResult> getVPNGateway(
  GetVPNGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getVPNGateway:getVPNGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVPNGatewayResult.fromMap(result);
}
