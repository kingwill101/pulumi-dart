import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ingress_rule_appengine_v1beta_args.dart';
import 'get_ingress_rule_appengine_v1beta_result.dart';

/// Gets the specified firewall rule.
Future<GetIngressRuleAppengineV1betaResult> getIngressRuleAppengineV1beta(
  GetIngressRuleAppengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getIngressRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIngressRuleAppengineV1betaResult.fromMap(result);
}
