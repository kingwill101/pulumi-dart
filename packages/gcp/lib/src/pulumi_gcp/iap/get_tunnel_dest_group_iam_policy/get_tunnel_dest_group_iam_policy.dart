import 'package:pulumi/pulumi.dart';
import 'get_tunnel_dest_group_iam_policy_args.dart';
import 'get_tunnel_dest_group_iam_policy_result.dart';

/// Retrieves the current IAM policy data for tunneldestgroup
Future<GetTunnelDestGroupIamPolicyResult> getTunnelDestGroupIamPolicy(
  GetTunnelDestGroupIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getTunnelDestGroupIamPolicy:getTunnelDestGroupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTunnelDestGroupIamPolicyResult.fromMap(result);
}
