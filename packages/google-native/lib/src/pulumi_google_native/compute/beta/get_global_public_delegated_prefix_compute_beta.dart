import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_public_delegated_prefix_compute_beta_args.dart';
import 'get_global_public_delegated_prefix_compute_beta_result.dart';

/// Returns the specified global PublicDelegatedPrefix resource.
Future<GetGlobalPublicDelegatedPrefixComputeBetaResult>
    getGlobalPublicDelegatedPrefixComputeBeta(
  GetGlobalPublicDelegatedPrefixComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getGlobalPublicDelegatedPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalPublicDelegatedPrefixComputeBetaResult.fromMap(result);
}
