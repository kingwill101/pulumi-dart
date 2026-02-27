import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connector_vpcaccess_v1beta1_args.dart';
import 'get_connector_vpcaccess_v1beta1_result.dart';

/// Gets a Serverless VPC Access connector. Returns NOT_FOUND if the resource does not exist.
Future<GetConnectorVpcaccessV1beta1Result> getConnectorVpcaccessV1beta1(
  GetConnectorVpcaccessV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vpcaccess/v1beta1:getConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectorVpcaccessV1beta1Result.fromMap(result);
}
