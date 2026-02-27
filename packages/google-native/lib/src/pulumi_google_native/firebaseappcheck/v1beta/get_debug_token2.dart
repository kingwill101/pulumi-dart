import 'package:pulumi/pulumi.dart' hide Config;
import 'get_debug_token_args2.dart';
import 'get_debug_token_result2.dart';

/// Gets the specified DebugToken. For security reasons, the `token` field is never populated in the response.
Future<GetDebugTokenResult2> getDebugToken2(
  GetDebugTokenArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebaseappcheck/v1beta:getDebugToken',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDebugTokenResult2.fromMap(result);
}
