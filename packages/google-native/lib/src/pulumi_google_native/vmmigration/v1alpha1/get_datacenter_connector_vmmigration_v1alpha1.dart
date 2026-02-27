import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_datacenter_connector_vmmigration_v1alpha1_args.dart';
import 'get_datacenter_connector_vmmigration_v1alpha1_result.dart';

/// Gets details of a single DatacenterConnector.
Future<GetDatacenterConnectorVmmigrationV1alpha1Result>
    getDatacenterConnectorVmmigrationV1alpha1(
  GetDatacenterConnectorVmmigrationV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getDatacenterConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatacenterConnectorVmmigrationV1alpha1Result.fromMap(result);
}
