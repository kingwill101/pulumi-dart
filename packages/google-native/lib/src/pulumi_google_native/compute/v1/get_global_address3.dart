import 'package:pulumi/pulumi.dart';
import 'get_global_address_args3.dart';
import 'get_global_address_result3.dart';

/// Returns the specified address resource.
Future<GetGlobalAddressResult3> getGlobalAddress3(
  GetGlobalAddressArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getGlobalAddress',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGlobalAddressResult3.fromMap(result);
}
