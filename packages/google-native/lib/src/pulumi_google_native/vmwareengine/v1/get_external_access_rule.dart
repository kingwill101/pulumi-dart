import 'package:pulumi/pulumi.dart' hide Config;
import 'get_external_access_rule_args.dart';
import 'get_external_access_rule_result.dart';

/// Gets details of a single external access rule.
Future<GetExternalAccessRuleResult> getExternalAccessRule(
  GetExternalAccessRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getExternalAccessRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExternalAccessRuleResult.fromMap(result);
}
