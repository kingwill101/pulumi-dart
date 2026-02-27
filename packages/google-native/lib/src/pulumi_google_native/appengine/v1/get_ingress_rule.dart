import 'package:pulumi/pulumi.dart' hide Config;
import 'get_ingress_rule_args.dart';
import 'get_ingress_rule_result.dart';

/// Gets the specified firewall rule.
Future<GetIngressRuleResult> getIngressRule(
  GetIngressRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1:getIngressRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIngressRuleResult.fromMap(result);
}
