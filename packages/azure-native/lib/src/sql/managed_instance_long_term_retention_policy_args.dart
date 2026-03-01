// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_managed_instance_long_term_retention_policy_args_doc}
/// The set of arguments for ManagedInstanceLongTermRetentionPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_managed_instance_long_term_retention_policy_args_doc}
class ManagedInstanceLongTermRetentionPolicyArgs {
  /// The BackupStorageAccessTier for the LTR backups
  final pulumi.Input<String>? backupStorageAccessTier;
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// The monthly retention policy for an LTR backup in an ISO 8601 format.
  final pulumi.Input<String>? monthlyRetention;
  /// The policy name. Should always be Default.
  final pulumi.Input<String>? policyName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The week of year to take the yearly backup in an ISO 8601 format.
  final pulumi.Input<int>? weekOfYear;
  /// The weekly retention policy for an LTR backup in an ISO 8601 format.
  final pulumi.Input<String>? weeklyRetention;
  /// The yearly retention policy for an LTR backup in an ISO 8601 format.
  final pulumi.Input<String>? yearlyRetention;

  /// Creates a new [ManagedInstanceLongTermRetentionPolicyArgs].
  /// [backupStorageAccessTier] The BackupStorageAccessTier for the LTR backups
  /// [databaseName] The name of the database.
  /// [managedInstanceName] The name of the managed instance.
  /// [monthlyRetention] The monthly retention policy for an LTR backup in an ISO 8601 format.
  /// [policyName] The policy name. Should always be Default.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [weekOfYear] The week of year to take the yearly backup in an ISO 8601 format.
  /// [weeklyRetention] The weekly retention policy for an LTR backup in an ISO 8601 format.
  /// [yearlyRetention] The yearly retention policy for an LTR backup in an ISO 8601 format.
  ManagedInstanceLongTermRetentionPolicyArgs({
    String? backupStorageAccessTier,
    required String databaseName,
    required String managedInstanceName,
    String? monthlyRetention,
    String? policyName,
    required String resourceGroupName,
    int? weekOfYear,
    String? weeklyRetention,
    String? yearlyRetention,
  }) :
      backupStorageAccessTier = pulumi.Input.asOptionalInput<String>(backupStorageAccessTier),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      managedInstanceName = pulumi.Input.asInput<String>(managedInstanceName),
      monthlyRetention = pulumi.Input.asOptionalInput<String>(monthlyRetention),
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      weekOfYear = pulumi.Input.asOptionalInput<int>(weekOfYear),
      weeklyRetention = pulumi.Input.asOptionalInput<String>(weeklyRetention),
      yearlyRetention = pulumi.Input.asOptionalInput<String>(yearlyRetention);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupStorageAccessTier': ?backupStorageAccessTier,
      'databaseName': databaseName,
      'managedInstanceName': managedInstanceName,
      'monthlyRetention': ?monthlyRetention,
      'policyName': ?policyName,
      'resourceGroupName': resourceGroupName,
      'weekOfYear': ?weekOfYear,
      'weeklyRetention': ?weeklyRetention,
      'yearlyRetention': ?yearlyRetention,
    };
  }

  factory ManagedInstanceLongTermRetentionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceLongTermRetentionPolicyArgs(
      backupStorageAccessTier: map['backupStorageAccessTier'] == null ? null : map['backupStorageAccessTier'] as String,
      databaseName: map['databaseName'] as String,
      managedInstanceName: map['managedInstanceName'] as String,
      monthlyRetention: map['monthlyRetention'] == null ? null : map['monthlyRetention'] as String,
      policyName: map['policyName'] == null ? null : map['policyName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      weekOfYear: map['weekOfYear'] == null ? null : map['weekOfYear'] as int,
      weeklyRetention: map['weeklyRetention'] == null ? null : map['weeklyRetention'] as String,
      yearlyRetention: map['yearlyRetention'] == null ? null : map['yearlyRetention'] as String,
    );
  }
}

