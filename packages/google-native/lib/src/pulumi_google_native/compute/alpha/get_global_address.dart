import 'package:pulumi/pulumi.dart' hide Config;
import 'get_global_address_args.dart';
import 'get_global_address_result.dart';

/// Returns the specified address resource.
Future<GetGlobalAddressResult> getGlobalAddress(
  GetGlobalAddressArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getGlobalAddress',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGlobalAddressResult.fromMap(result);
}
