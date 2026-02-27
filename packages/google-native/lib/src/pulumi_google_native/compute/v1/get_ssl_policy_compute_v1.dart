import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ssl_policy_compute_v1_args.dart';
import 'get_ssl_policy_compute_v1_result.dart';

/// Lists all of the ordered rules present in a single specified policy.
Future<GetSslPolicyComputeV1Result> getSslPolicyComputeV1(
  GetSslPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getSslPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSslPolicyComputeV1Result.fromMap(result);
}
