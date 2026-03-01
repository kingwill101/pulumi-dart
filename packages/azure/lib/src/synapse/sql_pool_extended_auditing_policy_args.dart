// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_sql_pool_extended_auditing_policy_sql_pool_extended_auditing_policy_args_doc}
/// The set of arguments for SqlPoolExtendedAuditingPolicy.
/// {@endtemplate}
/// {@macro pulumi_synapse_sql_pool_extended_auditing_policy_sql_pool_extended_auditing_policy_args_doc}
class SqlPoolExtendedAuditingPolicyArgs {
  /// Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its master database audit events to Azure Monitor. Defaults to `true`.
  final pulumi.Input<bool>? logMonitoringEnabled;
  /// The number of days to retain logs for in the storage account. Defaults to `0`.
  final pulumi.Input<int>? retentionInDays;
  /// The ID of the Synapse SQL pool to set the extended auditing policy. Changing this forces a new resource to be created.
  final pulumi.Input<String> sqlPoolId;
  /// The access key to use for the auditing storage account.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// Is `storage_account_access_key` value the storage's secondary key?
  final pulumi.Input<bool>? storageAccountAccessKeyIsSecondary;
  /// The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs.
  final pulumi.Input<String>? storageEndpoint;

  /// Creates a new [SqlPoolExtendedAuditingPolicyArgs].
  /// [logMonitoringEnabled] Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its master database audit events to Azure Monitor. Defaults to `true`.
  /// [retentionInDays] The number of days to retain logs for in the storage account. Defaults to `0`.
  /// [sqlPoolId] The ID of the Synapse SQL pool to set the extended auditing policy. Changing this forces a new resource to be created.
  /// [storageAccountAccessKey] The access key to use for the auditing storage account.
  /// [storageAccountAccessKeyIsSecondary] Is `storage_account_access_key` value the storage's secondary key?
  /// [storageEndpoint] The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs.
  SqlPoolExtendedAuditingPolicyArgs({
    bool? logMonitoringEnabled,
    int? retentionInDays,
    required String sqlPoolId,
    String? storageAccountAccessKey,
    bool? storageAccountAccessKeyIsSecondary,
    String? storageEndpoint,
  }) :
      logMonitoringEnabled = pulumi.Input.asOptionalInput<bool>(logMonitoringEnabled),
      retentionInDays = pulumi.Input.asOptionalInput<int>(retentionInDays),
      sqlPoolId = pulumi.Input.asInput<String>(sqlPoolId),
      storageAccountAccessKey = pulumi.Input.asOptionalInput<String>(storageAccountAccessKey),
      storageAccountAccessKeyIsSecondary = pulumi.Input.asOptionalInput<bool>(storageAccountAccessKeyIsSecondary),
      storageEndpoint = pulumi.Input.asOptionalInput<String>(storageEndpoint);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logMonitoringEnabled': ?logMonitoringEnabled,
      'retentionInDays': ?retentionInDays,
      'sqlPoolId': sqlPoolId,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountAccessKeyIsSecondary': ?storageAccountAccessKeyIsSecondary,
      'storageEndpoint': ?storageEndpoint,
    };
  }

  factory SqlPoolExtendedAuditingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SqlPoolExtendedAuditingPolicyArgs(
      logMonitoringEnabled: map['logMonitoringEnabled'] == null ? null : map['logMonitoringEnabled'] as bool,
      retentionInDays: map['retentionInDays'] == null ? null : map['retentionInDays'] as int,
      sqlPoolId: map['sqlPoolId'] as String,
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : map['storageAccountAccessKey'] as String,
      storageAccountAccessKeyIsSecondary: map['storageAccountAccessKeyIsSecondary'] == null ? null : map['storageAccountAccessKeyIsSecondary'] as bool,
      storageEndpoint: map['storageEndpoint'] == null ? null : map['storageEndpoint'] as String,
    );
  }
}

