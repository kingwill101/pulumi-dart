import 'package:pulumi/pulumi.dart';
import 'get_public_delegated_prefix_args2.dart';
import 'get_public_delegated_prefix_result2.dart';

/// Returns the specified PublicDelegatedPrefix resource in the given region.
Future<GetPublicDelegatedPrefixResult2> getPublicDelegatedPrefix2(
  GetPublicDelegatedPrefixArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getPublicDelegatedPrefix',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPublicDelegatedPrefixResult2.fromMap(result);
}
