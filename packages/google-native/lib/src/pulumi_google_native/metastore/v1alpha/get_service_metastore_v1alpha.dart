import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_metastore_v1alpha_args.dart';
import 'get_service_metastore_v1alpha_result.dart';

/// Gets the details of a single service.
Future<GetServiceMetastoreV1alphaResult> getServiceMetastoreV1alpha(
  GetServiceMetastoreV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceMetastoreV1alphaResult.fromMap(result);
}
