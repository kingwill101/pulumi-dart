// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_workspace_extended_auditing_policy_workspace_extended_auditing_policy_args_doc}
/// The set of arguments for WorkspaceExtendedAuditingPolicy.
/// {@endtemplate}
/// {@macro pulumi_synapse_workspace_extended_auditing_policy_workspace_extended_auditing_policy_args_doc}
class WorkspaceExtendedAuditingPolicyArgs {
  /// Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its master database audit events to Azure Monitor. Defaults to `true`.
  final pulumi.Input<bool>? logMonitoringEnabled;
  /// The number of days to retain logs for in the storage account. Defaults to `0`.
  final pulumi.Input<int>? retentionInDays;
  /// The access key to use for the auditing storage account.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// Is `storage_account_access_key` value the storage's secondary key?
  final pulumi.Input<bool>? storageAccountAccessKeyIsSecondary;
  /// The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs.
  final pulumi.Input<String>? storageEndpoint;
  /// The ID of the Synapse workspace to set the extended auditing policy. Changing this forces a new resource to be created.
  final pulumi.Input<String> synapseWorkspaceId;

  /// Creates a new [WorkspaceExtendedAuditingPolicyArgs].
  /// [logMonitoringEnabled] Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its master database audit events to Azure Monitor. Defaults to `true`.
  /// [retentionInDays] The number of days to retain logs for in the storage account. Defaults to `0`.
  /// [storageAccountAccessKey] The access key to use for the auditing storage account.
  /// [storageAccountAccessKeyIsSecondary] Is `storage_account_access_key` value the storage's secondary key?
  /// [storageEndpoint] The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs.
  /// [synapseWorkspaceId] The ID of the Synapse workspace to set the extended auditing policy. Changing this forces a new resource to be created.
  WorkspaceExtendedAuditingPolicyArgs({
    bool? logMonitoringEnabled,
    int? retentionInDays,
    String? storageAccountAccessKey,
    bool? storageAccountAccessKeyIsSecondary,
    String? storageEndpoint,
    required String synapseWorkspaceId,
  }) :
      logMonitoringEnabled = pulumi.Input.asOptionalInput<bool>(logMonitoringEnabled),
      retentionInDays = pulumi.Input.asOptionalInput<int>(retentionInDays),
      storageAccountAccessKey = pulumi.Input.asOptionalInput<String>(storageAccountAccessKey),
      storageAccountAccessKeyIsSecondary = pulumi.Input.asOptionalInput<bool>(storageAccountAccessKeyIsSecondary),
      storageEndpoint = pulumi.Input.asOptionalInput<String>(storageEndpoint),
      synapseWorkspaceId = pulumi.Input.asInput<String>(synapseWorkspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logMonitoringEnabled': ?logMonitoringEnabled,
      'retentionInDays': ?retentionInDays,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountAccessKeyIsSecondary': ?storageAccountAccessKeyIsSecondary,
      'storageEndpoint': ?storageEndpoint,
      'synapseWorkspaceId': synapseWorkspaceId,
    };
  }

  factory WorkspaceExtendedAuditingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceExtendedAuditingPolicyArgs(
      logMonitoringEnabled: map['logMonitoringEnabled'] == null ? null : map['logMonitoringEnabled'] as bool,
      retentionInDays: map['retentionInDays'] == null ? null : map['retentionInDays'] as int,
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : map['storageAccountAccessKey'] as String,
      storageAccountAccessKeyIsSecondary: map['storageAccountAccessKeyIsSecondary'] == null ? null : map['storageAccountAccessKeyIsSecondary'] as bool,
      storageEndpoint: map['storageEndpoint'] == null ? null : map['storageEndpoint'] as String,
      synapseWorkspaceId: map['synapseWorkspaceId'] as String,
    );
  }
}

