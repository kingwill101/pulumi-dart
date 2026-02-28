import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_args.dart';
import 'get_backup_plan_args.dart';
import 'get_backup_plan_backup_iam_policy_args.dart';
import 'get_backup_plan_backup_iam_policy_result.dart';
import 'get_backup_plan_backup_volume_backup_iam_policy_args.dart';
import 'get_backup_plan_backup_volume_backup_iam_policy_result.dart';
import 'get_backup_plan_iam_policy_args.dart';
import 'get_backup_plan_iam_policy_result.dart';
import 'get_backup_plan_result.dart';
import 'get_backup_result.dart';
import 'get_restore_args.dart';
import 'get_restore_plan_args.dart';
import 'get_restore_plan_iam_policy_args.dart';
import 'get_restore_plan_iam_policy_result.dart';
import 'get_restore_plan_restore_iam_policy_args.dart';
import 'get_restore_plan_restore_iam_policy_result.dart';
import 'get_restore_plan_restore_volume_restore_iam_policy_args.dart';
import 'get_restore_plan_restore_volume_restore_iam_policy_result.dart';
import 'get_restore_plan_result.dart';
import 'get_restore_result.dart';

/// Retrieve the details of a single Backup.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkebackup_v1_get_backup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupResult> getBackup(
  GetBackupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkebackup/v1:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupResult.fromMap(result);
}

/// Retrieve the details of a single BackupPlan.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkebackup_v1_get_backup_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupPlanResult> getBackupPlan(
  GetBackupPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkebackup/v1:getBackupPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupPlanResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkebackup_v1_get_backup_plan_backup_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupPlanBackupIamPolicyResult> getBackupPlanBackupIamPolicy(
  GetBackupPlanBackupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkebackup/v1:getBackupPlanBackupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupPlanBackupIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkebackup_v1_get_backup_plan_backup_volume_backup_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupPlanBackupVolumeBackupIamPolicyResult>
    getBackupPlanBackupVolumeBackupIamPolicy(
  GetBackupPlanBackupVolumeBackupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkebackup/v1:getBackupPlanBackupVolumeBackupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupPlanBackupVolumeBackupIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkebackup_v1_get_backup_plan_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupPlanIamPolicyResult> getBackupPlanIamPolicy(
  GetBackupPlanIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkebackup/v1:getBackupPlanIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupPlanIamPolicyResult.fromMap(result);
}

/// Retrieves the details of a single Restore.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkebackup_v1_get_restore_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRestoreResult> getRestore(
  GetRestoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkebackup/v1:getRestore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRestoreResult.fromMap(result);
}

/// Retrieve the details of a single RestorePlan.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkebackup_v1_get_restore_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRestorePlanResult> getRestorePlan(
  GetRestorePlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkebackup/v1:getRestorePlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRestorePlanResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkebackup_v1_get_restore_plan_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRestorePlanIamPolicyResult> getRestorePlanIamPolicy(
  GetRestorePlanIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkebackup/v1:getRestorePlanIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRestorePlanIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkebackup_v1_get_restore_plan_restore_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRestorePlanRestoreIamPolicyResult> getRestorePlanRestoreIamPolicy(
  GetRestorePlanRestoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkebackup/v1:getRestorePlanRestoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRestorePlanRestoreIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkebackup_v1_get_restore_plan_restore_volume_restore_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRestorePlanRestoreVolumeRestoreIamPolicyResult>
    getRestorePlanRestoreVolumeRestoreIamPolicy(
  GetRestorePlanRestoreVolumeRestoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkebackup/v1:getRestorePlanRestoreVolumeRestoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRestorePlanRestoreVolumeRestoreIamPolicyResult.fromMap(result);
}
