import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_policy_args.dart';
import 'get_endpoint_policy_result.dart';

/// Gets details of a single EndpointPolicy.
Future<GetEndpointPolicyResult> getEndpointPolicy(
  GetEndpointPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getEndpointPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointPolicyResult.fromMap(result);
}
