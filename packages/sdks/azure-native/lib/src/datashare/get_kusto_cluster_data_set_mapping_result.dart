// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getKustoClusterDataSetMapping.
class GetKustoClusterDataSetMappingResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The id of the source data set.
  final String? dataSetId;
  /// Gets the status of the data set mapping.
  final String? dataSetMappingStatus;
  /// The resource id of the azure resource
  final String? id;
  /// Kind of data set mapping.
  /// Expected value is 'KustoCluster'.
  final String? kind;
  /// Resource id of the sink kusto cluster.
  final String? kustoClusterResourceId;
  /// Location of the sink kusto cluster.
  final String? location;
  /// Name of the azure resource
  final String? name;
  /// Provisioning state of the data set mapping.
  final String? provisioningState;
  /// System Data of the Azure resource.
  final SystemDataResponse? systemData;
  /// Type of the azure resource
  final String? type;

  /// Creates a new [GetKustoClusterDataSetMappingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataSetId] The id of the source data set.
  /// [dataSetMappingStatus] Gets the status of the data set mapping.
  /// [id] The resource id of the azure resource
  /// [kind] Kind of data set mapping.
  /// [kustoClusterResourceId] Resource id of the sink kusto cluster.
  /// [location] Location of the sink kusto cluster.
  /// [name] Name of the azure resource
  /// [provisioningState] Provisioning state of the data set mapping.
  /// [systemData] System Data of the Azure resource.
  /// [type] Type of the azure resource
  const GetKustoClusterDataSetMappingResult({
    this.azureApiVersion,
    this.dataSetId,
    this.dataSetMappingStatus,
    this.id,
    this.kind,
    this.kustoClusterResourceId,
    this.location,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dataSetId': ?dataSetId,
      'dataSetMappingStatus': ?dataSetMappingStatus,
      'id': ?id,
      'kind': ?kind,
      'kustoClusterResourceId': ?kustoClusterResourceId,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetKustoClusterDataSetMappingResult.fromMap(Map<String, dynamic> map) {
    return GetKustoClusterDataSetMappingResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSetId: (() { final guardedValue = map['dataSetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSetMappingStatus: (() { final guardedValue = map['dataSetMappingStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kustoClusterResourceId: (() { final guardedValue = map['kustoClusterResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
