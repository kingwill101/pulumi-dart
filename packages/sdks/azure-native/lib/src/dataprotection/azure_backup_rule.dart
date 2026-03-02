// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'adhoc_based_trigger_context.dart';
import 'azure_backup_params.dart';
import 'data_store_info_base.dart';

/// Azure backup rule
class AzureBackupRule {
  /// BackupParameters base
  final pulumi.Input<AzureBackupParams>? backupParameters;
  /// DataStoreInfo base
  final pulumi.Input<DataStoreInfoBase> dataStore;
  final pulumi.Input<String> name;
  /// Expected value is 'AzureBackupRule'.
  final pulumi.Input<String> objectType;
  /// Trigger context
  final pulumi.Input<AdhocBasedTriggerContext> trigger;

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
      'backupParameters': ?pulumi.Input.mapOptionalInputValue<AzureBackupParams, Map<String, dynamic>>(backupParameters, (value) => value.toMap()),
      'dataStore': pulumi.Input.mapInputValue<DataStoreInfoBase, Map<String, dynamic>>(dataStore, (value) => value.toMap()),
      'name': name,
      'objectType': objectType,
      'trigger': pulumi.Input.mapInputValue<AdhocBasedTriggerContext, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory AzureBackupRule.fromMap(Map<String, dynamic> map) {
    return AzureBackupRule(
      backupParameters: map['backupParameters'] == null ? null : (AzureBackupParams.fromMap((map['backupParameters']! as Map).cast<String, dynamic>())).input(),
      dataStore: (DataStoreInfoBase.fromMap((map['dataStore'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      objectType: (map['objectType'] as String).input(),
      trigger: (AdhocBasedTriggerContext.fromMap((map['trigger'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

