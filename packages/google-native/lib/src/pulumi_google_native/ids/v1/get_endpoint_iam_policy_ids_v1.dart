import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_iam_policy_ids_v1_args.dart';
import 'get_endpoint_iam_policy_ids_v1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetEndpointIamPolicyIdsV1Result> getEndpointIamPolicyIdsV1(
  GetEndpointIamPolicyIdsV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ids/v1:getEndpointIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointIamPolicyIdsV1Result.fromMap(result);
}
