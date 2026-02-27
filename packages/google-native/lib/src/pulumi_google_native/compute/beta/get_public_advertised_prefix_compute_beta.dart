import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_public_advertised_prefix_compute_beta_args.dart';
import 'get_public_advertised_prefix_compute_beta_result.dart';

/// Returns the specified PublicAdvertisedPrefix resource.
Future<GetPublicAdvertisedPrefixComputeBetaResult>
    getPublicAdvertisedPrefixComputeBeta(
  GetPublicAdvertisedPrefixComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getPublicAdvertisedPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicAdvertisedPrefixComputeBetaResult.fromMap(result);
}
