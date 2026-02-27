import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_binding_iam_policy_args2.dart';
import 'get_service_binding_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceBindingIamPolicyResult2> getServiceBindingIamPolicy2(
  GetServiceBindingIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getServiceBindingIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceBindingIamPolicyResult2.fromMap(result);
}
