import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_public_advertised_prefix_compute_v1_args.dart';
import 'get_public_advertised_prefix_compute_v1_result.dart';

/// Returns the specified PublicAdvertisedPrefix resource.
Future<GetPublicAdvertisedPrefixComputeV1Result>
    getPublicAdvertisedPrefixComputeV1(
  GetPublicAdvertisedPrefixComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getPublicAdvertisedPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicAdvertisedPrefixComputeV1Result.fromMap(result);
}
