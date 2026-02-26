import 'package:pulumi/pulumi.dart';
import 'get_datacenter_connector_args2.dart';
import 'get_datacenter_connector_result2.dart';

/// Gets details of a single DatacenterConnector.
Future<GetDatacenterConnectorResult2> getDatacenterConnector2(
  GetDatacenterConnectorArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getDatacenterConnector',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatacenterConnectorResult2.fromMap(result);
}
