import 'package:pulumi/pulumi.dart';
import 'get_vpngateway_args.dart';
import 'get_vpngateway_result.dart';

/// Get a VPN gateway within GCE from its name.
Future<GetVPNGatewayResult> getVPNGateway(
  GetVPNGatewayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getVPNGateway:getVPNGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVPNGatewayResult.fromMap(result);
}
