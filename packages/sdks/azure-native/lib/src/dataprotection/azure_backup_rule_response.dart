// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_backup_params_response.dart';
import 'data_store_info_base_response.dart';

/// Azure backup rule
class AzureBackupRuleResponse {
  /// BackupParameters base
  final pulumi.Input<AzureBackupParamsResponse?>? backupParameters;
  /// DataStoreInfo base
  final pulumi.Input<DataStoreInfoBaseResponse> dataStore;
  final pulumi.Input<String> name;
  /// Expected value is 'AzureBackupRule'.
  final pulumi.Input<String> objectType;
  /// Trigger context
  final pulumi.Input<dynamic> trigger;

  /// Creates a new [AzureBackupRuleResponse].
  /// [backupParameters] BackupParameters base
  /// [dataStore] DataStoreInfo base
  /// [name] Required.
  /// [objectType] Expected value is 'AzureBackupRule'.
  /// [trigger] Trigger context
  const AzureBackupRuleResponse({
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
      'trigger': trigger,
    };
  }

  factory AzureBackupRuleResponse.fromMap(Map<String, dynamic> map) {
    return AzureBackupRuleResponse(
      backupParameters: (() { final guardedValue = map['backupParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureBackupParamsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataStore: pulumi.Input.fromValue(DataStoreInfoBaseResponse.fromMap((map['dataStore']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      trigger: pulumi.Input.fromValue(map['trigger']),
    );
  }
}
