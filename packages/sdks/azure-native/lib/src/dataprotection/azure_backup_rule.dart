// ignore_for_file: unused_element, unnecessary_cast

import 'adhoc_based_trigger_context.dart';
import 'azure_backup_params.dart';
import 'data_store_info_base.dart';

/// Azure backup rule
class AzureBackupRule {
  /// BackupParameters base
  final AzureBackupParams? backupParameters;
  /// DataStoreInfo base
  final DataStoreInfoBase dataStore;
  final String name;
  /// Expected value is 'AzureBackupRule'.
  final String objectType;
  /// Trigger context
  final AdhocBasedTriggerContext trigger;

  /// Creates a new [AzureBackupRule].
  /// [backupParameters] BackupParameters base
  /// [dataStore] DataStoreInfo base
  /// [name] Required.
  /// [objectType] Expected value is 'AzureBackupRule'.
  /// [trigger] Trigger context
  AzureBackupRule({
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

  factory AzureBackupRule.fromMap(Map<String, dynamic> map) {
    return AzureBackupRule(
      backupParameters: map['backupParameters'] == null ? null : AzureBackupParams.fromMap((map['backupParameters'] as Map).cast<String, dynamic>()),
      dataStore: DataStoreInfoBase.fromMap((map['dataStore'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      objectType: map['objectType'] as String,
      trigger: AdhocBasedTriggerContext.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}

