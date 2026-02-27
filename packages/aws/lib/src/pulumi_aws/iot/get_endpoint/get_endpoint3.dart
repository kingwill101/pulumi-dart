import 'package:pulumi/pulumi.dart';
import 'get_endpoint_args3.dart';
import 'get_endpoint_result3.dart';

/// Returns a unique endpoint specific to the AWS account making the call.
Future<GetEndpointResult3> getEndpoint3(
  GetEndpointArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iot/getEndpoint:getEndpoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult3.fromMap(result);
}
