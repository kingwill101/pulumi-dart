import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_connection_policy_args.dart';
import 'get_service_connection_policy_result.dart';

/// Gets details of a single ServiceConnectionPolicy.
Future<GetServiceConnectionPolicyResult> getServiceConnectionPolicy(
  GetServiceConnectionPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getServiceConnectionPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceConnectionPolicyResult.fromMap(result);
}
