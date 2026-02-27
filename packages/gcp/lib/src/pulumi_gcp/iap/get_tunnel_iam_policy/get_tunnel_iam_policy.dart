import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tunnel_iam_policy_args.dart';
import 'get_tunnel_iam_policy_result.dart';

/// Retrieves the current IAM policy data for tunnel
Future<GetTunnelIamPolicyResult> getTunnelIamPolicy(
  GetTunnelIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getTunnelIamPolicy:getTunnelIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTunnelIamPolicyResult.fromMap(result);
}
