import 'package:pulumi/pulumi.dart' hide Config;
import 'get_address_args3.dart';
import 'get_address_result3.dart';

/// Returns the specified address resource.
Future<GetAddressResult3> getAddress3(
  GetAddressArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getAddress',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAddressResult3.fromMap(result);
}
