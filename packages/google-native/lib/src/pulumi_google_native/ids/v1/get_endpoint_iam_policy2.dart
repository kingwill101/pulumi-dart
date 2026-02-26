import 'package:pulumi/pulumi.dart';
import 'get_endpoint_iam_policy_args2.dart';
import 'get_endpoint_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetEndpointIamPolicyResult2> getEndpointIamPolicy2(
  GetEndpointIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ids/v1:getEndpointIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEndpointIamPolicyResult2.fromMap(result);
}
