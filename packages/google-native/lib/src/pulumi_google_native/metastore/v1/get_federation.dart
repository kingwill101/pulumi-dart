import 'package:pulumi/pulumi.dart';
import 'get_federation_args.dart';
import 'get_federation_result.dart';

/// Gets the details of a single federation.
Future<GetFederationResult> getFederation(
  GetFederationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1:getFederation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFederationResult.fromMap(result);
}
