import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_constraint_args.dart';
import 'get_custom_constraint_result.dart';
import 'get_folder_policy_args.dart';
import 'get_folder_policy_result.dart';
import 'get_organization_policy_args.dart';
import 'get_organization_policy_result.dart';
import 'get_policy_args.dart';
import 'get_policy_result.dart';

/// Gets a custom constraint. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the custom constraint does not exist.
/// [args] Arguments passed to this invoke. {@macro pulumi_orgpolicy_v2_get_custom_constraint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomConstraintResult> getCustomConstraint(
  GetCustomConstraintArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:orgpolicy/v2:getCustomConstraint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomConstraintResult.fromMap(result);
}

/// Gets a policy on a resource. If no policy is set on the resource, `NOT_FOUND` is returned. The `etag` value can be used with `UpdatePolicy()` to update a policy during read-modify-write.
/// [args] Arguments passed to this invoke. {@macro pulumi_orgpolicy_v2_get_folder_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderPolicyResult> getFolderPolicy(
  GetFolderPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:orgpolicy/v2:getFolderPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderPolicyResult.fromMap(result);
}

/// Gets a policy on a resource. If no policy is set on the resource, `NOT_FOUND` is returned. The `etag` value can be used with `UpdatePolicy()` to update a policy during read-modify-write.
/// [args] Arguments passed to this invoke. {@macro pulumi_orgpolicy_v2_get_organization_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationPolicyResult> getOrganizationPolicy(
  GetOrganizationPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:orgpolicy/v2:getOrganizationPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPolicyResult.fromMap(result);
}

/// Gets a policy on a resource. If no policy is set on the resource, `NOT_FOUND` is returned. The `etag` value can be used with `UpdatePolicy()` to update a policy during read-modify-write.
/// [args] Arguments passed to this invoke. {@macro pulumi_orgpolicy_v2_get_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyResult> getPolicy(
  GetPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:orgpolicy/v2:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}
