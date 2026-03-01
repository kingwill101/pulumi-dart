// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_operational_store_parameters.dart';
import 'blob_backup_datasource_parameters.dart';

/// Parameters in Policy
class PolicyParameters {
  /// Gets or sets the Backup Data Source Parameters
  final List<BlobBackupDatasourceParameters>? backupDatasourceParametersList;
  /// Gets or sets the DataStore Parameters
  final List<AzureOperationalStoreParameters>? dataStoreParametersList;

  /// Creates a new [PolicyParameters].
  /// [backupDatasourceParametersList] Gets or sets the Backup Data Source Parameters
  /// [dataStoreParametersList] Gets or sets the DataStore Parameters
  PolicyParameters({
    this.backupDatasourceParametersList,
    this.dataStoreParametersList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupDatasourceParametersList': ?backupDatasourceParametersList == null ? null : pulumi.Input.encodeList<BlobBackupDatasourceParameters, Map<String, dynamic>>(backupDatasourceParametersList!, (value) => value.toMap()),
      'dataStoreParametersList': ?dataStoreParametersList == null ? null : pulumi.Input.encodeList<AzureOperationalStoreParameters, Map<String, dynamic>>(dataStoreParametersList!, (value) => value.toMap()),
    };
  }

  factory PolicyParameters.fromMap(Map<String, dynamic> map) {
    return PolicyParameters(
      backupDatasourceParametersList: map['backupDatasourceParametersList'] == null ? null : pulumi.Input.decodeList<BlobBackupDatasourceParameters>(map['backupDatasourceParametersList'], (value) => BlobBackupDatasourceParameters.fromMap((value as Map).cast<String, dynamic>())),
      dataStoreParametersList: map['dataStoreParametersList'] == null ? null : pulumi.Input.decodeList<AzureOperationalStoreParameters>(map['dataStoreParametersList'], (value) => AzureOperationalStoreParameters.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

