import 'package:pulumi/pulumi.dart' hide Config;
import 'get_external_address_args.dart';
import 'get_external_address_result.dart';

/// Gets details of a single external IP address.
Future<GetExternalAddressResult> getExternalAddress(
  GetExternalAddressArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getExternalAddress',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExternalAddressResult.fromMap(result);
}
