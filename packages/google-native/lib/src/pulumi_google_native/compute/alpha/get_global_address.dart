import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_address_args.dart';
import 'get_global_address_result.dart';

/// Returns the specified address resource.
Future<GetGlobalAddressResult> getGlobalAddress(
  GetGlobalAddressArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getGlobalAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalAddressResult.fromMap(result);
}
