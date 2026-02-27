import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_connection_policy_args.dart';
import 'get_service_connection_policy_result.dart';

/// Gets details of a single ServiceConnectionPolicy.
Future<GetServiceConnectionPolicyResult> getServiceConnectionPolicy(
  GetServiceConnectionPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getServiceConnectionPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceConnectionPolicyResult.fromMap(result);
}
