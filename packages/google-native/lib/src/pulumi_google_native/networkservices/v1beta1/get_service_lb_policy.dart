import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_lb_policy_args.dart';
import 'get_service_lb_policy_result.dart';

/// Gets details of a single ServiceLbPolicy.
Future<GetServiceLbPolicyResult> getServiceLbPolicy(
  GetServiceLbPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getServiceLbPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceLbPolicyResult.fromMap(result);
}
