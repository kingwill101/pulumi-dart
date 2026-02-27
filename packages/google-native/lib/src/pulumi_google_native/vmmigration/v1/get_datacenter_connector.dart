import 'package:pulumi/pulumi.dart' hide Config;
import 'get_datacenter_connector_args.dart';
import 'get_datacenter_connector_result.dart';

/// Gets details of a single DatacenterConnector.
Future<GetDatacenterConnectorResult> getDatacenterConnector(
  GetDatacenterConnectorArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getDatacenterConnector',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatacenterConnectorResult.fromMap(result);
}
