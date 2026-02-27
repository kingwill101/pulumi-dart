import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_args.dart';
import 'get_address_result.dart';

/// Returns the specified address resource.
Future<GetAddressResult> getAddress(
  GetAddressArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressResult.fromMap(result);
}
