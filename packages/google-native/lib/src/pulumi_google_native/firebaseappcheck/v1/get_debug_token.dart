import 'package:pulumi/pulumi.dart';
import 'get_debug_token_args.dart';
import 'get_debug_token_result.dart';

/// Gets the specified DebugToken. For security reasons, the `token` field is never populated in the response.
Future<GetDebugTokenResult> getDebugToken(
  GetDebugTokenArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebaseappcheck/v1:getDebugToken',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDebugTokenResult.fromMap(result);
}
