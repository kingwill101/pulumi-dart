import 'package:pulumi/pulumi.dart';
import 'get_public_delegated_prefix_args3.dart';
import 'get_public_delegated_prefix_result3.dart';

/// Returns the specified PublicDelegatedPrefix resource in the given region.
Future<GetPublicDelegatedPrefixResult3> getPublicDelegatedPrefix3(
  GetPublicDelegatedPrefixArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getPublicDelegatedPrefix',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPublicDelegatedPrefixResult3.fromMap(result);
}
