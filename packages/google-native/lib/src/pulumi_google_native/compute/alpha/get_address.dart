import 'package:pulumi/pulumi.dart' hide Config;
import 'get_address_args.dart';
import 'get_address_result.dart';

/// Returns the specified address resource.
Future<GetAddressResult> getAddress(
  GetAddressArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getAddress',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAddressResult.fromMap(result);
}
