import 'package:pulumi/pulumi.dart';
import 'get_rule_set_args.dart';
import 'get_rule_set_result.dart';

/// Gets a ruleset. Returns NOT_FOUND if the ruleset does not exist.
Future<GetRuleSetResult> getRuleSet(
  GetRuleSetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contentwarehouse/v1:getRuleSet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRuleSetResult.fromMap(result);
}
