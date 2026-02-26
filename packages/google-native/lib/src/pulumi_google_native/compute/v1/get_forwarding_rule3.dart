import 'package:pulumi/pulumi.dart';
import 'get_forwarding_rule_args3.dart';
import 'get_forwarding_rule_result3.dart';

/// Returns the specified ForwardingRule resource.
Future<GetForwardingRuleResult3> getForwardingRule3(
  GetForwardingRuleArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getForwardingRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetForwardingRuleResult3.fromMap(result);
}
