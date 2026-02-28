import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_guest_policy_args.dart';
import 'get_guest_policy_result.dart';
import 'get_os_policy_assignment_args.dart';
import 'get_os_policy_assignment_osconfig_v1alpha_args.dart';
import 'get_os_policy_assignment_osconfig_v1alpha_result.dart';
import 'get_os_policy_assignment_result.dart';
import 'get_patch_deployment_args.dart';
import 'get_patch_deployment_osconfig_v1beta_args.dart';
import 'get_patch_deployment_osconfig_v1beta_result.dart';
import 'get_patch_deployment_result.dart';

/// Retrieve an existing OS policy assignment. This method always returns the latest revision. In order to retrieve a previous revision of the assignment, also provide the revision ID in the `name` parameter.
/// [args] Arguments passed to this invoke. {@macro pulumi_osconfig_v1_get_os_policy_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOsPolicyAssignmentResult> getOsPolicyAssignment(
  GetOsPolicyAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:osconfig/v1:getOsPolicyAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOsPolicyAssignmentResult.fromMap(result);
}

/// Get an OS Config patch deployment.
/// [args] Arguments passed to this invoke. {@macro pulumi_osconfig_v1_get_patch_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPatchDeploymentResult> getPatchDeployment(
  GetPatchDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:osconfig/v1:getPatchDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPatchDeploymentResult.fromMap(result);
}

/// Retrieve an existing OS policy assignment. This method always returns the latest revision. In order to retrieve a previous revision of the assignment, also provide the revision ID in the `name` parameter.
/// [args] Arguments passed to this invoke. {@macro pulumi_osconfig_v1alpha_get_os_policy_assignment_osconfig_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOsPolicyAssignmentOsconfigV1alphaResult>
    getOsPolicyAssignmentOsconfigV1alpha(
  GetOsPolicyAssignmentOsconfigV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:osconfig/v1alpha:getOsPolicyAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOsPolicyAssignmentOsconfigV1alphaResult.fromMap(result);
}

/// Get an OS Config guest policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_osconfig_v1beta_get_guest_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGuestPolicyResult> getGuestPolicy(
  GetGuestPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:osconfig/v1beta:getGuestPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGuestPolicyResult.fromMap(result);
}

/// Get an OS Config patch deployment.
/// [args] Arguments passed to this invoke. {@macro pulumi_osconfig_v1beta_get_patch_deployment_osconfig_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPatchDeploymentOsconfigV1betaResult> getPatchDeploymentOsconfigV1beta(
  GetPatchDeploymentOsconfigV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:osconfig/v1beta:getPatchDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPatchDeploymentOsconfigV1betaResult.fromMap(result);
}
