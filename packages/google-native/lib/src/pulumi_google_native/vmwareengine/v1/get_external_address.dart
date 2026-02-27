import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_external_address_args.dart';
import 'get_external_address_result.dart';

/// Gets details of a single external IP address.
Future<GetExternalAddressResult> getExternalAddress(
  GetExternalAddressArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getExternalAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExternalAddressResult.fromMap(result);
}
