import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_iot_args.dart';
import 'get_endpoint_iot_result.dart';

/// Returns a unique endpoint specific to the AWS account making the call.
Future<GetEndpointIotResult> getEndpointIot(
  GetEndpointIotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iot/getEndpoint:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointIotResult.fromMap(result);
}
