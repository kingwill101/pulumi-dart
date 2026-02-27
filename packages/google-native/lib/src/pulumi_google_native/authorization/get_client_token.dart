import 'package:pulumi/pulumi.dart' hide Config;
import 'get_client_token_result.dart';

/// Use this function to get an Google authentication token for the current login context.
Future<GetClientTokenResult> getClientToken({
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:authorization:getClientToken',
    const <String, dynamic>{},
    options: toDeploymentInvokeOptions(options),
  );
  return GetClientTokenResult.fromMap(result);
}
