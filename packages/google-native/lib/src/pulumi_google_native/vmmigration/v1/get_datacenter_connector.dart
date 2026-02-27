import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_datacenter_connector_args.dart';
import 'get_datacenter_connector_result.dart';

/// Gets details of a single DatacenterConnector.
Future<GetDatacenterConnectorResult> getDatacenterConnector(
  GetDatacenterConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getDatacenterConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatacenterConnectorResult.fromMap(result);
}
