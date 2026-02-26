import 'package:pulumi/pulumi.dart';
import 'get_endpoint_iam_policy_args.dart';
import 'get_endpoint_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetEndpointIamPolicyResult> getEndpointIamPolicy(
  GetEndpointIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getEndpointIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEndpointIamPolicyResult.fromMap(result);
}
