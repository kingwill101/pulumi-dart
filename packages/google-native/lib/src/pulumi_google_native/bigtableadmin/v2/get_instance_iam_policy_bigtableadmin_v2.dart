import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_iam_policy_bigtableadmin_v2_args.dart';
import 'get_instance_iam_policy_bigtableadmin_v2_result.dart';

/// Gets the access control policy for an instance resource. Returns an empty policy if an instance exists but does not have a policy set.
Future<GetInstanceIamPolicyBigtableadminV2Result>
    getInstanceIamPolicyBigtableadminV2(
  GetInstanceIamPolicyBigtableadminV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyBigtableadminV2Result.fromMap(result);
}
