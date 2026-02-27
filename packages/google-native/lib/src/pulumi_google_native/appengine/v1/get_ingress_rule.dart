import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ingress_rule_args.dart';
import 'get_ingress_rule_result.dart';

/// Gets the specified firewall rule.
Future<GetIngressRuleResult> getIngressRule(
  GetIngressRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1:getIngressRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIngressRuleResult.fromMap(result);
}
