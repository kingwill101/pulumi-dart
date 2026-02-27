import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_job_iam_policy_args2.dart';
import 'get_region_job_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetRegionJobIamPolicyResult2> getRegionJobIamPolicy2(
  GetRegionJobIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionJobIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionJobIamPolicyResult2.fromMap(result);
}
