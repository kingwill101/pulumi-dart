import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_forwarding_rule_compute_v1_args.dart';
import 'get_global_forwarding_rule_compute_v1_result.dart';

/// Returns the specified GlobalForwardingRule resource. Gets a list of available forwarding rules by making a list() request.
Future<GetGlobalForwardingRuleComputeV1Result> getGlobalForwardingRuleComputeV1(
  GetGlobalForwardingRuleComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getGlobalForwardingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalForwardingRuleComputeV1Result.fromMap(result);
}
