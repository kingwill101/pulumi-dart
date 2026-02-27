import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_iam_policy_securesourcemanager_args.dart';
import 'get_instance_iam_policy_securesourcemanager_result.dart';

/// Retrieves the current IAM policy data for instance
Future<GetInstanceIamPolicySecuresourcemanagerResult>
    getInstanceIamPolicySecuresourcemanager(
  GetInstanceIamPolicySecuresourcemanagerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:securesourcemanager/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicySecuresourcemanagerResult.fromMap(result);
}
