import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_public_delegated_prefix_args.dart';
import 'get_global_public_delegated_prefix_result.dart';

/// Returns the specified global PublicDelegatedPrefix resource.
Future<GetGlobalPublicDelegatedPrefixResult> getGlobalPublicDelegatedPrefix(
  GetGlobalPublicDelegatedPrefixArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getGlobalPublicDelegatedPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalPublicDelegatedPrefixResult.fromMap(result);
}
