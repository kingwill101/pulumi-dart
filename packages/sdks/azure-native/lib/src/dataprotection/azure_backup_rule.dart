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
  const AzureBackupRule({
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
      backupParameters: (() { final guardedValue = map['backupParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureBackupParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataStore: pulumi.Input.fromValue(DataStoreInfoBase.fromMap((map['dataStore']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      trigger: pulumi.Input.fromValue(AdhocBasedTriggerContext.fromMap((map['trigger']! as Map).cast<String, dynamic>())),
    );
  }
}
