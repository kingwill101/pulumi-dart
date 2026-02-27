import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_operation_iam_policy_dataproc_v1beta2_args.dart';
import 'get_region_operation_iam_policy_dataproc_v1beta2_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetRegionOperationIamPolicyDataprocV1beta2Result>
    getRegionOperationIamPolicyDataprocV1beta2(
  GetRegionOperationIamPolicyDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getRegionOperationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionOperationIamPolicyDataprocV1beta2Result.fromMap(result);
}
