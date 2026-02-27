import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_federation_args.dart';
import 'get_federation_result.dart';

/// Gets the details of a single federation.
Future<GetFederationResult> getFederation(
  GetFederationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1:getFederation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFederationResult.fromMap(result);
}
