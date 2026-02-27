import 'package:pulumi/pulumi.dart';
import 'get_address_args.dart';
import 'get_address_result.dart';

/// Get the IP address from a static address. For more information see
/// the official [API](https://cloud.google.com/compute/docs/reference/latest/addresses/get) documentation.
Future<GetAddressResult> getAddress(
  GetAddressArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getAddress:getAddress',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAddressResult.fromMap(result);
}
