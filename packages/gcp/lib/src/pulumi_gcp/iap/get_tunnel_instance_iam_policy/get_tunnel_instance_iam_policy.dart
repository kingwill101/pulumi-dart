import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tunnel_instance_iam_policy_args.dart';
import 'get_tunnel_instance_iam_policy_result.dart';

/// Retrieves the current IAM policy data for tunnelinstance
Future<GetTunnelInstanceIamPolicyResult> getTunnelInstanceIamPolicy(
  GetTunnelInstanceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getTunnelInstanceIamPolicy:getTunnelInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTunnelInstanceIamPolicyResult.fromMap(result);
}
