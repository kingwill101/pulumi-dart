import 'package:pulumi/pulumi.dart' hide Config;
import 'get_address_args2.dart';
import 'get_address_result2.dart';

/// Returns the specified address resource.
Future<GetAddressResult2> getAddress2(
  GetAddressArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getAddress',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAddressResult2.fromMap(result);
}
