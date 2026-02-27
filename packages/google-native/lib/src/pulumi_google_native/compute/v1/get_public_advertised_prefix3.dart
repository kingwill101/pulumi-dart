import 'package:pulumi/pulumi.dart' hide Config;
import 'get_public_advertised_prefix_args3.dart';
import 'get_public_advertised_prefix_result3.dart';

/// Returns the specified PublicAdvertisedPrefix resource.
Future<GetPublicAdvertisedPrefixResult3> getPublicAdvertisedPrefix3(
  GetPublicAdvertisedPrefixArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getPublicAdvertisedPrefix',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPublicAdvertisedPrefixResult3.fromMap(result);
}
