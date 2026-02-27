import 'package:pulumi/pulumi.dart' hide Config;
import 'get_public_delegated_prefix_args.dart';
import 'get_public_delegated_prefix_result.dart';

/// Returns the specified PublicDelegatedPrefix resource in the given region.
Future<GetPublicDelegatedPrefixResult> getPublicDelegatedPrefix(
  GetPublicDelegatedPrefixArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getPublicDelegatedPrefix',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPublicDelegatedPrefixResult.fromMap(result);
}
