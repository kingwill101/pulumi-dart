import 'package:pulumi/pulumi.dart';
import 'get_federation_args2.dart';
import 'get_federation_result2.dart';

/// Gets the details of a single federation.
Future<GetFederationResult2> getFederation2(
  GetFederationArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getFederation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFederationResult2.fromMap(result);
}
