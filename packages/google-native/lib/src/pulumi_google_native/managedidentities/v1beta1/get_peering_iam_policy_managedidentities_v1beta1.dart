import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_peering_iam_policy_managedidentities_v1beta1_args.dart';
import 'get_peering_iam_policy_managedidentities_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetPeeringIamPolicyManagedidentitiesV1beta1Result>
    getPeeringIamPolicyManagedidentitiesV1beta1(
  GetPeeringIamPolicyManagedidentitiesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1beta1:getPeeringIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeeringIamPolicyManagedidentitiesV1beta1Result.fromMap(result);
}
