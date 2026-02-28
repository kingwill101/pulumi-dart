import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_profile_args.dart';
import 'get_connection_profile_datamigration_v1beta1_args.dart';
import 'get_connection_profile_datamigration_v1beta1_result.dart';
import 'get_connection_profile_iam_policy_args.dart';
import 'get_connection_profile_iam_policy_datamigration_v1beta1_args.dart';
import 'get_connection_profile_iam_policy_datamigration_v1beta1_result.dart';
import 'get_connection_profile_iam_policy_result.dart';
import 'get_connection_profile_result.dart';
import 'get_conversion_workspace_args.dart';
import 'get_conversion_workspace_iam_policy_args.dart';
import 'get_conversion_workspace_iam_policy_result.dart';
import 'get_conversion_workspace_result.dart';
import 'get_mapping_rule_args.dart';
import 'get_mapping_rule_result.dart';
import 'get_migration_job_args.dart';
import 'get_migration_job_datamigration_v1beta1_args.dart';
import 'get_migration_job_datamigration_v1beta1_result.dart';
import 'get_migration_job_iam_policy_args.dart';
import 'get_migration_job_iam_policy_datamigration_v1beta1_args.dart';
import 'get_migration_job_iam_policy_datamigration_v1beta1_result.dart';
import 'get_migration_job_iam_policy_result.dart';
import 'get_migration_job_result.dart';
import 'get_private_connection_args.dart';
import 'get_private_connection_iam_policy_args.dart';
import 'get_private_connection_iam_policy_result.dart';
import 'get_private_connection_result.dart';

/// Gets details of a single connection profile.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1_get_connection_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionProfileResult> getConnectionProfile(
  GetConnectionProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getConnectionProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionProfileResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1_get_connection_profile_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionProfileIamPolicyResult> getConnectionProfileIamPolicy(
  GetConnectionProfileIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getConnectionProfileIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionProfileIamPolicyResult.fromMap(result);
}

/// Gets details of a single conversion workspace.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1_get_conversion_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConversionWorkspaceResult> getConversionWorkspace(
  GetConversionWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getConversionWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversionWorkspaceResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1_get_conversion_workspace_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConversionWorkspaceIamPolicyResult> getConversionWorkspaceIamPolicy(
  GetConversionWorkspaceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getConversionWorkspaceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversionWorkspaceIamPolicyResult.fromMap(result);
}

/// Gets the details of a mapping rule.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1_get_mapping_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMappingRuleResult> getMappingRule(
  GetMappingRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getMappingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMappingRuleResult.fromMap(result);
}

/// Gets details of a single migration job.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1_get_migration_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMigrationJobResult> getMigrationJob(
  GetMigrationJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getMigrationJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigrationJobResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1_get_migration_job_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMigrationJobIamPolicyResult> getMigrationJobIamPolicy(
  GetMigrationJobIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getMigrationJobIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigrationJobIamPolicyResult.fromMap(result);
}

/// Gets details of a single private connection.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1_get_private_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateConnectionResult> getPrivateConnection(
  GetPrivateConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getPrivateConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateConnectionResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1_get_private_connection_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateConnectionIamPolicyResult> getPrivateConnectionIamPolicy(
  GetPrivateConnectionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getPrivateConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateConnectionIamPolicyResult.fromMap(result);
}

/// Gets details of a single connection profile.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1beta1_get_connection_profile_datamigration_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionProfileDatamigrationV1beta1Result>
    getConnectionProfileDatamigrationV1beta1(
  GetConnectionProfileDatamigrationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1beta1:getConnectionProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionProfileDatamigrationV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1beta1_get_connection_profile_iam_policy_datamigration_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionProfileIamPolicyDatamigrationV1beta1Result>
    getConnectionProfileIamPolicyDatamigrationV1beta1(
  GetConnectionProfileIamPolicyDatamigrationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1beta1:getConnectionProfileIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionProfileIamPolicyDatamigrationV1beta1Result.fromMap(
      result);
}

/// Gets details of a single migration job.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1beta1_get_migration_job_datamigration_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMigrationJobDatamigrationV1beta1Result>
    getMigrationJobDatamigrationV1beta1(
  GetMigrationJobDatamigrationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1beta1:getMigrationJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigrationJobDatamigrationV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_datamigration_v1beta1_get_migration_job_iam_policy_datamigration_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMigrationJobIamPolicyDatamigrationV1beta1Result>
    getMigrationJobIamPolicyDatamigrationV1beta1(
  GetMigrationJobIamPolicyDatamigrationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1beta1:getMigrationJobIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigrationJobIamPolicyDatamigrationV1beta1Result.fromMap(result);
}
