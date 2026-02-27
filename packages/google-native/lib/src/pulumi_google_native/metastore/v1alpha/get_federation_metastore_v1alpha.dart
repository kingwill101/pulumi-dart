import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_federation_metastore_v1alpha_args.dart';
import 'get_federation_metastore_v1alpha_result.dart';

/// Gets the details of a single federation.
Future<GetFederationMetastoreV1alphaResult> getFederationMetastoreV1alpha(
  GetFederationMetastoreV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getFederation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFederationMetastoreV1alphaResult.fromMap(result);
}
