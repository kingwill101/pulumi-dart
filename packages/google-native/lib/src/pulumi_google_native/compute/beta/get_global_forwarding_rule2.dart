import 'package:pulumi/pulumi.dart';
import 'get_global_forwarding_rule_args2.dart';
import 'get_global_forwarding_rule_result2.dart';

/// Returns the specified GlobalForwardingRule resource. Gets a list of available forwarding rules by making a list() request.
Future<GetGlobalForwardingRuleResult2> getGlobalForwardingRule2(
  GetGlobalForwardingRuleArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getGlobalForwardingRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGlobalForwardingRuleResult2.fromMap(result);
}
