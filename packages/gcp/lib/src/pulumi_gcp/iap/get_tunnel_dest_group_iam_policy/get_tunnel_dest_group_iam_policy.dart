import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tunnel_dest_group_iam_policy_args.dart';
import 'get_tunnel_dest_group_iam_policy_result.dart';

/// Retrieves the current IAM policy data for tunneldestgroup
Future<GetTunnelDestGroupIamPolicyResult> getTunnelDestGroupIamPolicy(
  GetTunnelDestGroupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getTunnelDestGroupIamPolicy:getTunnelDestGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTunnelDestGroupIamPolicyResult.fromMap(result);
}
