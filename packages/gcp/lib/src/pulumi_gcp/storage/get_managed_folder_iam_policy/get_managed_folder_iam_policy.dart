import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_folder_iam_policy_args.dart';
import 'get_managed_folder_iam_policy_result.dart';

Future<GetManagedFolderIamPolicyResult> getManagedFolderIamPolicy(
  GetManagedFolderIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getManagedFolderIamPolicy:getManagedFolderIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedFolderIamPolicyResult.fromMap(result);
}
