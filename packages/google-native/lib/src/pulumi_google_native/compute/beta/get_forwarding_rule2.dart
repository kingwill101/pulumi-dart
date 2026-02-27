import 'package:pulumi/pulumi.dart' hide Config;
import 'get_forwarding_rule_args2.dart';
import 'get_forwarding_rule_result2.dart';

/// Returns the specified ForwardingRule resource.
Future<GetForwardingRuleResult2> getForwardingRule2(
  GetForwardingRuleArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getForwardingRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetForwardingRuleResult2.fromMap(result);
}
