import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_address_args.dart';
import 'get_global_address_result.dart';

/// Get the IP address from a static address reserved for a Global Forwarding Rule which are only used for HTTP load balancing. For more information see
/// the official [API](https://cloud.google.com/compute/docs/reference/latest/globalAddresses) documentation.
Future<GetGlobalAddressResult> getGlobalAddress(
  GetGlobalAddressArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getGlobalAddress:getGlobalAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalAddressResult.fromMap(result);
}
