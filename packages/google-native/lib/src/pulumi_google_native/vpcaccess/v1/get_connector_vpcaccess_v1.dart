import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connector_vpcaccess_v1_args.dart';
import 'get_connector_vpcaccess_v1_result.dart';

/// Gets a Serverless VPC Access connector. Returns NOT_FOUND if the resource does not exist.
Future<GetConnectorVpcaccessV1Result> getConnectorVpcaccessV1(
  GetConnectorVpcaccessV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vpcaccess/v1:getConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectorVpcaccessV1Result.fromMap(result);
}
