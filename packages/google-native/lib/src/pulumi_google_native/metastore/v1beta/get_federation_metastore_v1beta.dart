import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_federation_metastore_v1beta_args.dart';
import 'get_federation_metastore_v1beta_result.dart';

/// Gets the details of a single federation.
Future<GetFederationMetastoreV1betaResult> getFederationMetastoreV1beta(
  GetFederationMetastoreV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getFederation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFederationMetastoreV1betaResult.fromMap(result);
}
