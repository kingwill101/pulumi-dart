import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_policy_networkservices_v1beta1_args.dart';
import 'get_endpoint_policy_networkservices_v1beta1_result.dart';

/// Gets details of a single EndpointPolicy.
Future<GetEndpointPolicyNetworkservicesV1beta1Result>
    getEndpointPolicyNetworkservicesV1beta1(
  GetEndpointPolicyNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getEndpointPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointPolicyNetworkservicesV1beta1Result.fromMap(result);
}
