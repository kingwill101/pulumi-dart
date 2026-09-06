// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_operational_store_parameters_response.dart';

/// Parameters in Policy
class PolicyParametersResponse {
  /// Gets or sets the Backup Data Source Parameters
  final pulumi.Input<List<dynamic>?>? backupDatasourceParametersList;
  /// Gets or sets the DataStore Parameters
  final pulumi.Input<List<AzureOperationalStoreParametersResponse>?>? dataStoreParametersList;

  /// Creates a new [PolicyParametersResponse].
  /// [backupDatasourceParametersList] Gets or sets the Backup Data Source Parameters
  /// [dataStoreParametersList] Gets or sets the DataStore Parameters
  const PolicyParametersResponse({
    this.backupDatasourceParametersList,
    this.dataStoreParametersList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupDatasourceParametersList': ?backupDatasourceParametersList,
      'dataStoreParametersList': ?pulumi.Input.mapOptionalInputValue<List<AzureOperationalStoreParametersResponse>, List<Map<String, dynamic>>>(dataStoreParametersList, (value) => pulumi.Input.encodeList<AzureOperationalStoreParametersResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicyParametersResponse.fromMap(Map<String, dynamic> map) {
    return PolicyParametersResponse(
      backupDatasourceParametersList: (() { final guardedValue = map['backupDatasourceParametersList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      dataStoreParametersList: (() { final guardedValue = map['dataStoreParametersList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureOperationalStoreParametersResponse>(guardedValue, (value) => AzureOperationalStoreParametersResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
