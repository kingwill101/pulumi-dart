import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_metastore_v1beta_args.dart';
import 'get_service_metastore_v1beta_result.dart';

/// Gets the details of a single service.
Future<GetServiceMetastoreV1betaResult> getServiceMetastoreV1beta(
  GetServiceMetastoreV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceMetastoreV1betaResult.fromMap(result);
}
