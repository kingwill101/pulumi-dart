// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_server_extended_auditing_policy_server_extended_auditing_policy_args_doc}
/// The set of arguments for ServerExtendedAuditingPolicy.
/// {@endtemplate}
/// {@macro pulumi_mssql_server_extended_auditing_policy_server_extended_auditing_policy_args_doc}
class ServerExtendedAuditingPolicyArgs {
  /// A list of Actions-Groups and Actions to audit.
  final pulumi.Input<List<String>>? auditActionsAndGroups;
  /// Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`.
  ///
  /// > **Note:** If `enabled` is `true`, `storage_endpoint` or `log_monitoring_enabled` are required.
  final pulumi.Input<bool>? enabled;
  /// Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its main database audit events to Azure Monitor. Defaults to `true`.
  final pulumi.Input<bool>? logMonitoringEnabled;
  /// Specifies condition of where clause when creating an audit.
  final pulumi.Input<String>? predicateExpression;
  /// The number of days to retain logs for in the storage account. Defaults to `0`.
  final pulumi.Input<int>? retentionInDays;
  /// The ID of the SQL Server to set the extended auditing policy. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverId;
  /// The access key to use for the auditing storage account.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// Is `storage_account_access_key` value the storage's secondary key?
  final pulumi.Input<bool>? storageAccountAccessKeyIsSecondary;
  /// The ID of the Subscription containing the Storage Account.
  final pulumi.Input<String>? storageAccountSubscriptionId;
  /// The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs.
  final pulumi.Input<String>? storageEndpoint;

  /// Creates a new [ServerExtendedAuditingPolicyArgs].
  /// [auditActionsAndGroups] A list of Actions-Groups and Actions to audit.
  /// [enabled] Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`.
  /// [logMonitoringEnabled] Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its main database audit events to Azure Monitor. Defaults to `true`.
  /// [predicateExpression] Specifies condition of where clause when creating an audit.
  /// [retentionInDays] The number of days to retain logs for in the storage account. Defaults to `0`.
  /// [serverId] The ID of the SQL Server to set the extended auditing policy. Changing this forces a new resource to be created.
  /// [storageAccountAccessKey] The access key to use for the auditing storage account.
  /// [storageAccountAccessKeyIsSecondary] Is `storage_account_access_key` value the storage's secondary key?
  /// [storageAccountSubscriptionId] The ID of the Subscription containing the Storage Account.
  /// [storageEndpoint] The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs.
  ServerExtendedAuditingPolicyArgs({
    List<String>? auditActionsAndGroups,
    bool? enabled,
    bool? logMonitoringEnabled,
    String? predicateExpression,
    int? retentionInDays,
    required String serverId,
    String? storageAccountAccessKey,
    bool? storageAccountAccessKeyIsSecondary,
    String? storageAccountSubscriptionId,
    String? storageEndpoint,
  }) :
      auditActionsAndGroups = pulumi.Input.asOptionalInput<List<String>>(auditActionsAndGroups),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      logMonitoringEnabled = pulumi.Input.asOptionalInput<bool>(logMonitoringEnabled),
      predicateExpression = pulumi.Input.asOptionalInput<String>(predicateExpression),
      retentionInDays = pulumi.Input.asOptionalInput<int>(retentionInDays),
      serverId = pulumi.Input.asInput<String>(serverId),
      storageAccountAccessKey = pulumi.Input.asOptionalInput<String>(storageAccountAccessKey),
      storageAccountAccessKeyIsSecondary = pulumi.Input.asOptionalInput<bool>(storageAccountAccessKeyIsSecondary),
      storageAccountSubscriptionId = pulumi.Input.asOptionalInput<String>(storageAccountSubscriptionId),
      storageEndpoint = pulumi.Input.asOptionalInput<String>(storageEndpoint);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditActionsAndGroups': ?auditActionsAndGroups,
      'enabled': ?enabled,
      'logMonitoringEnabled': ?logMonitoringEnabled,
      'predicateExpression': ?predicateExpression,
      'retentionInDays': ?retentionInDays,
      'serverId': serverId,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountAccessKeyIsSecondary': ?storageAccountAccessKeyIsSecondary,
      'storageAccountSubscriptionId': ?storageAccountSubscriptionId,
      'storageEndpoint': ?storageEndpoint,
    };
  }

  factory ServerExtendedAuditingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServerExtendedAuditingPolicyArgs(
      auditActionsAndGroups: map['auditActionsAndGroups'] == null ? null : (map['auditActionsAndGroups'] as List).cast<String>(),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      logMonitoringEnabled: map['logMonitoringEnabled'] == null ? null : map['logMonitoringEnabled'] as bool,
      predicateExpression: map['predicateExpression'] == null ? null : map['predicateExpression'] as String,
      retentionInDays: map['retentionInDays'] == null ? null : map['retentionInDays'] as int,
      serverId: map['serverId'] as String,
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : map['storageAccountAccessKey'] as String,
      storageAccountAccessKeyIsSecondary: map['storageAccountAccessKeyIsSecondary'] == null ? null : map['storageAccountAccessKeyIsSecondary'] as bool,
      storageAccountSubscriptionId: map['storageAccountSubscriptionId'] == null ? null : map['storageAccountSubscriptionId'] as String,
      storageEndpoint: map['storageEndpoint'] == null ? null : map['storageEndpoint'] as String,
    );
  }
}

