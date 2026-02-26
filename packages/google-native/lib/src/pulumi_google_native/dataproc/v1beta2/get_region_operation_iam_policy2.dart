import 'package:pulumi/pulumi.dart';
import 'get_region_operation_iam_policy_args2.dart';
import 'get_region_operation_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetRegionOperationIamPolicyResult2> getRegionOperationIamPolicy2(
  GetRegionOperationIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionOperationIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionOperationIamPolicyResult2.fromMap(result);
}
