import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_action_args.dart';
import 'get_security_action_result.dart';

/// Get a SecurityAction by name.
Future<GetSecurityActionResult> getSecurityAction(
  GetSecurityActionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getSecurityAction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityActionResult.fromMap(result);
}
