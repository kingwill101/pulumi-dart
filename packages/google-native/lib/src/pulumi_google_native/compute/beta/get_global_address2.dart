import 'package:pulumi/pulumi.dart';
import 'get_global_address_args2.dart';
import 'get_global_address_result2.dart';

/// Returns the specified address resource.
Future<GetGlobalAddressResult2> getGlobalAddress2(
  GetGlobalAddressArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getGlobalAddress',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGlobalAddressResult2.fromMap(result);
}
