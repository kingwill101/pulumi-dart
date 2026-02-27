import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_lb_policy_args.dart';
import 'get_service_lb_policy_result.dart';

/// Gets details of a single ServiceLbPolicy.
Future<GetServiceLbPolicyResult> getServiceLbPolicy(
  GetServiceLbPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getServiceLbPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceLbPolicyResult.fromMap(result);
}
