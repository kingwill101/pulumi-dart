import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alert_policy_args.dart';
import 'get_alert_policy_result.dart';

/// Gets a single alerting policy.
Future<GetAlertPolicyResult> getAlertPolicy(
  GetAlertPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getAlertPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlertPolicyResult.fromMap(result);
}
