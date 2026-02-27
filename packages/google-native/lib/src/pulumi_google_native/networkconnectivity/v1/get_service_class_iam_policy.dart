import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_class_iam_policy_args.dart';
import 'get_service_class_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceClassIamPolicyResult> getServiceClassIamPolicy(
  GetServiceClassIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getServiceClassIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceClassIamPolicyResult.fromMap(result);
}
