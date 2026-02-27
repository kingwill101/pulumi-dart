import 'package:pulumi/pulumi.dart' as pulumi;
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
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getListenerRule:getListenerRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetListenerRuleResult.fromMap(result);
}
