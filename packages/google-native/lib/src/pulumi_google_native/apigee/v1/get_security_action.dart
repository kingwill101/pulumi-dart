import 'package:pulumi/pulumi.dart' hide Config;
import 'get_security_action_args.dart';
import 'get_security_action_result.dart';

/// Get a SecurityAction by name.
Future<GetSecurityActionResult> getSecurityAction(
  GetSecurityActionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getSecurityAction',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityActionResult.fromMap(result);
}
