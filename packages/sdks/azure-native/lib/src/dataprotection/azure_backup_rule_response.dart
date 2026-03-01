// ignore_for_file: unused_element, unnecessary_cast

import 'adhoc_based_trigger_context_response.dart';
import 'azure_backup_params_response.dart';
import 'data_store_info_base_response.dart';

/// Azure backup rule
class AzureBackupRuleResponse {
  /// BackupParameters base
  final AzureBackupParamsResponse? backupParameters;
  /// DataStoreInfo base
  final DataStoreInfoBaseResponse dataStore;
  final String name;
  /// Expected value is 'AzureBackupRule'.
  final String objectType;
  /// Trigger context
  final AdhocBasedTriggerContextResponse trigger;

  /// Creates a new [AzureBackupRuleResponse].
  /// [backupParameters] BackupParameters base
  /// [dataStore] DataStoreInfo base
  /// [name] Required.
  /// [objectType] Expected value is 'AzureBackupRule'.
  /// [trigger] Trigger context
  AzureBackupRuleResponse({
    this.backupParameters,
    required this.dataStore,
    required this.name,
    required this.objectType,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupParameters': ?backupParameters == null ? null : backupParameters!.toMap(),
      'dataStore': dataStore.toMap(),
      'name': name,
      'objectType': objectType,
      'trigger': trigger.toMap(),
    };
  }

  factory AzureBackupRuleResponse.fromMap(Map<String, dynamic> map) {
    return AzureBackupRuleResponse(
      backupParameters: map['backupParameters'] == null ? null : AzureBackupParamsResponse.fromMap((map['backupParameters'] as Map).cast<String, dynamic>()),
      dataStore: DataStoreInfoBaseResponse.fromMap((map['dataStore'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      objectType: map['objectType'] as String,
      trigger: AdhocBasedTriggerContextResponse.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}

