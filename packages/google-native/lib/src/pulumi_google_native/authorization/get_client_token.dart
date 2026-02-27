import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_client_token_result.dart';

/// Use this function to get an Google authentication token for the current login context.
Future<GetClientTokenResult> getClientToken({
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:authorization:getClientToken',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientTokenResult.fromMap(result);
}
