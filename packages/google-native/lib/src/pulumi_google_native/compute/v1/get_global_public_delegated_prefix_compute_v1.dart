import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_public_delegated_prefix_compute_v1_args.dart';
import 'get_global_public_delegated_prefix_compute_v1_result.dart';

/// Returns the specified global PublicDelegatedPrefix resource.
Future<GetGlobalPublicDelegatedPrefixComputeV1Result>
    getGlobalPublicDelegatedPrefixComputeV1(
  GetGlobalPublicDelegatedPrefixComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getGlobalPublicDelegatedPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalPublicDelegatedPrefixComputeV1Result.fromMap(result);
}
