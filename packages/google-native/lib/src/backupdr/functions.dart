import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_management_server_args.dart';
import 'get_management_server_iam_policy_args.dart';
import 'get_management_server_iam_policy_result.dart';
import 'get_management_server_result.dart';

/// Gets details of a single ManagementServer.
/// [args] Arguments passed to this invoke. {@macro pulumi_backupdr_v1_get_management_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagementServerResult> getManagementServer(
  GetManagementServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:backupdr/v1:getManagementServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagementServerResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_backupdr_v1_get_management_server_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagementServerIamPolicyResult> getManagementServerIamPolicy(
  GetManagementServerIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:backupdr/v1:getManagementServerIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagementServerIamPolicyResult.fromMap(result);
}
