import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_forwarding_rules_args.dart';
import 'get_forwarding_rules_result.dart';

/// List all networks in a specified Google Cloud project.
Future<GetForwardingRulesResult> getForwardingRules(
  GetForwardingRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getForwardingRules:getForwardingRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetForwardingRulesResult.fromMap(result);
}
