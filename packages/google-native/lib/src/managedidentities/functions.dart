import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_args.dart';
import 'get_backup_managedidentities_v1alpha1_args.dart';
import 'get_backup_managedidentities_v1alpha1_result.dart';
import 'get_backup_managedidentities_v1beta1_args.dart';
import 'get_backup_managedidentities_v1beta1_result.dart';
import 'get_backup_result.dart';
import 'get_domain_args.dart';
import 'get_domain_backup_iam_policy_args.dart';
import 'get_domain_backup_iam_policy_managedidentities_v1alpha1_args.dart';
import 'get_domain_backup_iam_policy_managedidentities_v1alpha1_result.dart';
import 'get_domain_backup_iam_policy_managedidentities_v1beta1_args.dart';
import 'get_domain_backup_iam_policy_managedidentities_v1beta1_result.dart';
import 'get_domain_backup_iam_policy_result.dart';
import 'get_domain_iam_policy_args.dart';
import 'get_domain_iam_policy_managedidentities_v1alpha1_args.dart';
import 'get_domain_iam_policy_managedidentities_v1alpha1_result.dart';
import 'get_domain_iam_policy_managedidentities_v1beta1_args.dart';
import 'get_domain_iam_policy_managedidentities_v1beta1_result.dart';
import 'get_domain_iam_policy_result.dart';
import 'get_domain_managedidentities_v1alpha1_args.dart';
import 'get_domain_managedidentities_v1alpha1_result.dart';
import 'get_domain_managedidentities_v1beta1_args.dart';
import 'get_domain_managedidentities_v1beta1_result.dart';
import 'get_domain_result.dart';
import 'get_peering_args.dart';
import 'get_peering_iam_policy_args.dart';
import 'get_peering_iam_policy_managedidentities_v1alpha1_args.dart';
import 'get_peering_iam_policy_managedidentities_v1alpha1_result.dart';
import 'get_peering_iam_policy_managedidentities_v1beta1_args.dart';
import 'get_peering_iam_policy_managedidentities_v1beta1_result.dart';
import 'get_peering_iam_policy_result.dart';
import 'get_peering_managedidentities_v1alpha1_args.dart';
import 'get_peering_managedidentities_v1alpha1_result.dart';
import 'get_peering_managedidentities_v1beta1_args.dart';
import 'get_peering_managedidentities_v1beta1_result.dart';
import 'get_peering_result.dart';

/// Gets details of a single Backup.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentities_v1_get_backup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupResult> getBackup(
  GetBackupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupResult.fromMap(result);
}

/// Gets information about a domain.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentities_v1_get_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainResult> getDomain(
  GetDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1:getDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentities_v1_get_domain_backup_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainBackupIamPolicyResult> getDomainBackupIamPolicy(
  GetDomainBackupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1:getDomainBackupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainBackupIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentities_v1_get_domain_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainIamPolicyResult> getDomainIamPolicy(
  GetDomainIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1:getDomainIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainIamPolicyResult.fromMap(result);
}

/// Gets details of a single Peering.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentities_v1_get_peering_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPeeringResult> getPeering(
  GetPeeringArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1:getPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeeringResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentities_v1_get_peering_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPeeringIamPolicyResult> getPeeringIamPolicy(
  GetPeeringIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1:getPeeringIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeeringIamPolicyResult.fromMap(result);
}

/// Gets details of a single Backup.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentities_v1alpha1_get_backup_managedidentities_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupManagedidentitiesV1alpha1Result>
    getBackupManagedidentitiesV1alpha1(
  GetBackupManagedidentitiesV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1alpha1:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupManagedidentitiesV1alpha1Result.fromMap(result);
}

/// Gets details of a single Domain.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentities_v1alpha1_get_domain_managedidentities_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainManagedidentitiesV1alpha1Result>
    getDomainManagedidentitiesV1alpha1(
  GetDomainManagedidentitiesV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1alpha1:getDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainManagedidentitiesV1alpha1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentities_v1alpha1_get_domain_backup_iam_policy_managedidentities_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainBackupIamPolicyManagedidentitiesV1alpha1Result>
    getDomainBackupIamPolicyManagedidentitiesV1alpha1(
  GetDomainBackupIamPolicyManagedidentitiesV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1alpha1:getDomainBackupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainBackupIamPolicyManagedidentitiesV1alpha1Result.fromMap(
      result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentities_v1alpha1_get_domain_iam_policy_managedidentities_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainIamPolicyManagedidentitiesV1alpha1Result>
    getDomainIamPolicyManagedidentitiesV1alpha1(
  GetDomainIamPolicyManagedidentitiesV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1alpha1:getDomainIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainIamPolicyManagedidentitiesV1alpha1Result.fromMap(result);
}

/// Gets details of a single Peering.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentities_v1alpha1_get_peering_managedidentities_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPeeringManagedidentitiesV1alpha1Result>
    getPeeringManagedidentitiesV1alpha1(
  GetPeeringManagedidentitiesV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1alpha1:getPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeeringManagedidentitiesV1alpha1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentities_v1alpha1_get_peering_iam_policy_managedidentities_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPeeringIamPolicyManagedidentitiesV1alpha1Result>
    getPeeringIamPolicyManagedidentitiesV1alpha1(
  GetPeeringIamPolicyManagedidentitiesV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1alpha1:getPeeringIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeeringIamPolicyManagedidentitiesV1alpha1Result.fromMap(result);
}

/// Gets details of a single Backup.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentities_v1beta1_get_backup_managedidentities_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupManagedidentitiesV1beta1Result>
    getBackupManagedidentitiesV1beta1(
  GetBackupManagedidentitiesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1beta1:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupManagedidentitiesV1beta1Result.fromMap(result);
}

/// Gets information about a domain.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentities_v1beta1_get_domain_managedidentities_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainManagedidentitiesV1beta1Result>
    getDomainManagedidentitiesV1beta1(
  GetDomainManagedidentitiesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1beta1:getDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainManagedidentitiesV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentities_v1beta1_get_domain_backup_iam_policy_managedidentities_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainBackupIamPolicyManagedidentitiesV1beta1Result>
    getDomainBackupIamPolicyManagedidentitiesV1beta1(
  GetDomainBackupIamPolicyManagedidentitiesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1beta1:getDomainBackupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainBackupIamPolicyManagedidentitiesV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentities_v1beta1_get_domain_iam_policy_managedidentities_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainIamPolicyManagedidentitiesV1beta1Result>
    getDomainIamPolicyManagedidentitiesV1beta1(
  GetDomainIamPolicyManagedidentitiesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1beta1:getDomainIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainIamPolicyManagedidentitiesV1beta1Result.fromMap(result);
}

/// Gets details of a single Peering.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentities_v1beta1_get_peering_managedidentities_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPeeringManagedidentitiesV1beta1Result>
    getPeeringManagedidentitiesV1beta1(
  GetPeeringManagedidentitiesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1beta1:getPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeeringManagedidentitiesV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedidentities_v1beta1_get_peering_iam_policy_managedidentities_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
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
