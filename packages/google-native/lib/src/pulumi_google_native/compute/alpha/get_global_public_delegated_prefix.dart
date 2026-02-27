import 'package:pulumi/pulumi.dart' hide Config;
import 'get_global_public_delegated_prefix_args.dart';
import 'get_global_public_delegated_prefix_result.dart';

/// Returns the specified global PublicDelegatedPrefix resource.
Future<GetGlobalPublicDelegatedPrefixResult> getGlobalPublicDelegatedPrefix(
  GetGlobalPublicDelegatedPrefixArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getGlobalPublicDelegatedPrefix',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGlobalPublicDelegatedPrefixResult.fromMap(result);
}
