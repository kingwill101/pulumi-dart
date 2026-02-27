import 'package:pulumi/pulumi.dart' hide Config;
import 'get_endpoint_policy_args2.dart';
import 'get_endpoint_policy_result2.dart';

/// Gets details of a single EndpointPolicy.
Future<GetEndpointPolicyResult2> getEndpointPolicy2(
  GetEndpointPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getEndpointPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEndpointPolicyResult2.fromMap(result);
}
