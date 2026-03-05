// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_operational_store_parameters.dart';
import 'blob_backup_datasource_parameters.dart';

/// Parameters in Policy
class PolicyParameters {
  /// Gets or sets the Backup Data Source Parameters
  final pulumi.Input<List<BlobBackupDatasourceParameters>>? backupDatasourceParametersList;
  /// Gets or sets the DataStore Parameters
  final pulumi.Input<List<AzureOperationalStoreParameters>>? dataStoreParametersList;

  /// Creates a new [PolicyParameters].
  /// [backupDatasourceParametersList] Gets or sets the Backup Data Source Parameters
  /// [dataStoreParametersList] Gets or sets the DataStore Parameters
  PolicyParameters({
    this.backupDatasourceParametersList,
    this.dataStoreParametersList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupDatasourceParametersList': ?pulumi.Input.mapOptionalInputValue<List<BlobBackupDatasourceParameters>, List<Map<String, dynamic>>>(backupDatasourceParametersList, (value) => pulumi.Input.encodeList<BlobBackupDatasourceParameters, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataStoreParametersList': ?pulumi.Input.mapOptionalInputValue<List<AzureOperationalStoreParameters>, List<Map<String, dynamic>>>(dataStoreParametersList, (value) => pulumi.Input.encodeList<AzureOperationalStoreParameters, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicyParameters.fromMap(Map<String, dynamic> map) {
    return PolicyParameters(
      backupDatasourceParametersList: (() { final guardedValue = map['backupDatasourceParametersList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BlobBackupDatasourceParameters>(guardedValue, (value) => BlobBackupDatasourceParameters.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataStoreParametersList: (() { final guardedValue = map['dataStoreParametersList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureOperationalStoreParameters>(guardedValue, (value) => AzureOperationalStoreParameters.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

