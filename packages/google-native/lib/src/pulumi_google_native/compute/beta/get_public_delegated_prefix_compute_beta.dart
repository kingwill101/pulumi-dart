import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_public_delegated_prefix_compute_beta_args.dart';
import 'get_public_delegated_prefix_compute_beta_result.dart';

/// Returns the specified PublicDelegatedPrefix resource in the given region.
Future<GetPublicDelegatedPrefixComputeBetaResult>
    getPublicDelegatedPrefixComputeBeta(
  GetPublicDelegatedPrefixComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getPublicDelegatedPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicDelegatedPrefixComputeBetaResult.fromMap(result);
}
