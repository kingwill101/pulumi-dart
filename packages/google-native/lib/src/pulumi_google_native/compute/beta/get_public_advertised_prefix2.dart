import 'package:pulumi/pulumi.dart' hide Config;
import 'get_public_advertised_prefix_args2.dart';
import 'get_public_advertised_prefix_result2.dart';

/// Returns the specified PublicAdvertisedPrefix resource.
Future<GetPublicAdvertisedPrefixResult2> getPublicAdvertisedPrefix2(
  GetPublicAdvertisedPrefixArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getPublicAdvertisedPrefix',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPublicAdvertisedPrefixResult2.fromMap(result);
}
