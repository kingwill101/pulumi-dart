import 'package:pulumi/pulumi.dart';
import 'get_listener_rule_args.dart';
import 'get_listener_rule_result.dart';

/// Provides information about an AWS Elastic Load Balancing Listener Rule.
///
/// ## Example Usage
///
/// ### Match by Rule ARN
///
///
///
/// ### Match by Listener ARN and Priority
Future<GetListenerRuleResult> getListenerRule(
  GetListenerRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getListenerRule:getListenerRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetListenerRuleResult.fromMap(result);
}
