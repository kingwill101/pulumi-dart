import 'package:pulumi/pulumi.dart';
import 'get_alert_policy_args.dart';
import 'get_alert_policy_result.dart';

/// Gets a single alerting policy.
Future<GetAlertPolicyResult> getAlertPolicy(
  GetAlertPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getAlertPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAlertPolicyResult.fromMap(result);
}
