import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_public_delegated_prefix_compute_v1_args.dart';
import 'get_public_delegated_prefix_compute_v1_result.dart';

/// Returns the specified PublicDelegatedPrefix resource in the given region.
Future<GetPublicDelegatedPrefixComputeV1Result>
    getPublicDelegatedPrefixComputeV1(
  GetPublicDelegatedPrefixComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getPublicDelegatedPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicDelegatedPrefixComputeV1Result.fromMap(result);
}
