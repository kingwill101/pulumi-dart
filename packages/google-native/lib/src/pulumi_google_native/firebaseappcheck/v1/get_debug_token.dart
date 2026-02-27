import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_debug_token_args.dart';
import 'get_debug_token_result.dart';

/// Gets the specified DebugToken. For security reasons, the `token` field is never populated in the response.
Future<GetDebugTokenResult> getDebugToken(
  GetDebugTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebaseappcheck/v1:getDebugToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDebugTokenResult.fromMap(result);
}
