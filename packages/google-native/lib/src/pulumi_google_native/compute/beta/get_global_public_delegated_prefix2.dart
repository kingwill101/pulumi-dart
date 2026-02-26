import 'package:pulumi/pulumi.dart';
import 'get_global_public_delegated_prefix_args2.dart';
import 'get_global_public_delegated_prefix_result2.dart';

/// Returns the specified global PublicDelegatedPrefix resource.
Future<GetGlobalPublicDelegatedPrefixResult2> getGlobalPublicDelegatedPrefix2(
  GetGlobalPublicDelegatedPrefixArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getGlobalPublicDelegatedPrefix',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGlobalPublicDelegatedPrefixResult2.fromMap(result);
}
