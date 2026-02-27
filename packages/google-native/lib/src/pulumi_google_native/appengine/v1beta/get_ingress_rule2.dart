import 'package:pulumi/pulumi.dart' hide Config;
import 'get_ingress_rule_args2.dart';
import 'get_ingress_rule_result2.dart';

/// Gets the specified firewall rule.
Future<GetIngressRuleResult2> getIngressRule2(
  GetIngressRuleArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getIngressRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIngressRuleResult2.fromMap(result);
}
