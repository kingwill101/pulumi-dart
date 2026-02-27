import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_public_advertised_prefix_args.dart';
import 'get_public_advertised_prefix_result.dart';

/// Returns the specified PublicAdvertisedPrefix resource.
Future<GetPublicAdvertisedPrefixResult> getPublicAdvertisedPrefix(
  GetPublicAdvertisedPrefixArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getPublicAdvertisedPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicAdvertisedPrefixResult.fromMap(result);
}
