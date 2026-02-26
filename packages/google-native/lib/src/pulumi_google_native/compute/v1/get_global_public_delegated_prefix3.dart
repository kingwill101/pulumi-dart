import 'package:pulumi/pulumi.dart';
import 'get_global_public_delegated_prefix_args3.dart';
import 'get_global_public_delegated_prefix_result3.dart';

/// Returns the specified global PublicDelegatedPrefix resource.
Future<GetGlobalPublicDelegatedPrefixResult3> getGlobalPublicDelegatedPrefix3(
  GetGlobalPublicDelegatedPrefixArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getGlobalPublicDelegatedPrefix',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGlobalPublicDelegatedPrefixResult3.fromMap(result);
}
