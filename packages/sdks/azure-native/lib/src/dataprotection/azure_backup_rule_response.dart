// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'adhoc_based_trigger_context_response.dart';
import 'azure_backup_params_response.dart';
import 'data_store_info_base_response.dart';

/// Azure backup rule
class AzureBackupRuleResponse {
  /// BackupParameters base
  final pulumi.Input<AzureBackupParamsResponse>? backupParameters;
  /// DataStoreInfo base
  final pulumi.Input<DataStoreInfoBaseResponse> dataStore;
  final pulumi.Input<String> name;
  /// Expected value is 'AzureBackupRule'.
  final pulumi.Input<String> objectType;
  /// Trigger context
  final pulumi.Input<AdhocBasedTriggerContextResponse> trigger;

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
      'backupParameters': ?pulumi.Input.mapOptionalInputValue<AzureBackupParamsResponse, Map<String, dynamic>>(backupParameters, (value) => value.toMap()),
      'dataStore': pulumi.Input.mapInputValue<DataStoreInfoBaseResponse, Map<String, dynamic>>(dataStore, (value) => value.toMap()),
      'name': name,
      'objectType': objectType,
      'trigger': pulumi.Input.mapInputValue<AdhocBasedTriggerContextResponse, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory AzureBackupRuleResponse.fromMap(Map<String, dynamic> map) {
    return AzureBackupRuleResponse(
      backupParameters: map['backupParameters'] == null ? null : (AzureBackupParamsResponse.fromMap((map['backupParameters'] as Map).cast<String, dynamic>())).input(),
      dataStore: (DataStoreInfoBaseResponse.fromMap((map['dataStore'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      objectType: (map['objectType'] as String).input(),
      trigger: (AdhocBasedTriggerContextResponse.fromMap((map['trigger'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

