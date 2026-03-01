// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_operational_store_parameters_response.dart';
import 'blob_backup_datasource_parameters_response.dart';

/// Parameters in Policy
class PolicyParametersResponse {
  /// Gets or sets the Backup Data Source Parameters
  final List<BlobBackupDatasourceParametersResponse>? backupDatasourceParametersList;
  /// Gets or sets the DataStore Parameters
  final List<AzureOperationalStoreParametersResponse>? dataStoreParametersList;

  /// Creates a new [PolicyParametersResponse].
  /// [backupDatasourceParametersList] Gets or sets the Backup Data Source Parameters
  /// [dataStoreParametersList] Gets or sets the DataStore Parameters
  PolicyParametersResponse({
    this.backupDatasourceParametersList,
    this.dataStoreParametersList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupDatasourceParametersList': ?backupDatasourceParametersList == null ? null : pulumi.Input.encodeList<BlobBackupDatasourceParametersResponse, Map<String, dynamic>>(backupDatasourceParametersList!, (value) => value.toMap()),
      'dataStoreParametersList': ?dataStoreParametersList == null ? null : pulumi.Input.encodeList<AzureOperationalStoreParametersResponse, Map<String, dynamic>>(dataStoreParametersList!, (value) => value.toMap()),
    };
  }

  factory PolicyParametersResponse.fromMap(Map<String, dynamic> map) {
    return PolicyParametersResponse(
      backupDatasourceParametersList: map['backupDatasourceParametersList'] == null ? null : pulumi.Input.decodeList<BlobBackupDatasourceParametersResponse>(map['backupDatasourceParametersList'], (value) => BlobBackupDatasourceParametersResponse.fromMap((value as Map).cast<String, dynamic>())),
      dataStoreParametersList: map['dataStoreParametersList'] == null ? null : pulumi.Input.decodeList<AzureOperationalStoreParametersResponse>(map['dataStoreParametersList'], (value) => AzureOperationalStoreParametersResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

