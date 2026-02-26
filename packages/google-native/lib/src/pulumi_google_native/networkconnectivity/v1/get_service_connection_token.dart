import 'package:pulumi/pulumi.dart';
import 'get_service_connection_token_args.dart';
import 'get_service_connection_token_result.dart';

/// Gets details of a single ServiceConnectionToken.
Future<GetServiceConnectionTokenResult> getServiceConnectionToken(
  GetServiceConnectionTokenArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getServiceConnectionToken',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceConnectionTokenResult.fromMap(result);
}
