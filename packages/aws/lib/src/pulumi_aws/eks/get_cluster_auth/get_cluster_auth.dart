import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_auth_args.dart';
import 'get_cluster_auth_result.dart';

/// Get an authentication token to communicate with an EKS cluster.
///
/// Uses IAM credentials from the AWS provider to generate a temporary token that is compatible with
/// [AWS IAM Authenticator](https://github.com/kubernetes-sigs/aws-iam-authenticator) authentication.
/// This can be used to authenticate to an EKS cluster or to a cluster that has the AWS IAM Authenticator
/// server configured.
Future<GetClusterAuthResult> getClusterAuth(
  GetClusterAuthArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getClusterAuth:getClusterAuth',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterAuthResult.fromMap(result);
}
