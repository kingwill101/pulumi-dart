// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getKustoDatabaseDataSet.
class GetKustoDatabaseDataSetResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Unique id for identifying a data set resource
  final String? dataSetId;
  /// The resource id of the azure resource
  final String? id;
  /// Kind of data set.
  /// Expected value is 'KustoDatabase'.
  final String? kind;
  /// Resource id of the kusto database.
  final String? kustoDatabaseResourceId;
  /// Location of the kusto cluster.
  final String? location;
  /// Name of the azure resource
  final String? name;
  /// Provisioning state of the kusto database data set.
  final String? provisioningState;
  /// System Data of the Azure resource.
  final SystemDataResponse? systemData;
  /// Type of the azure resource
  final String? type;

  /// Creates a new [GetKustoDatabaseDataSetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataSetId] Unique id for identifying a data set resource
  /// [id] The resource id of the azure resource
  /// [kind] Kind of data set.
  /// [kustoDatabaseResourceId] Resource id of the kusto database.
  /// [location] Location of the kusto cluster.
  /// [name] Name of the azure resource
  /// [provisioningState] Provisioning state of the kusto database data set.
  /// [systemData] System Data of the Azure resource.
  /// [type] Type of the azure resource
  const GetKustoDatabaseDataSetResult({
    this.azureApiVersion,
    this.dataSetId,
    this.id,
    this.kind,
    this.kustoDatabaseResourceId,
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
      'id': ?id,
      'kind': ?kind,
      'kustoDatabaseResourceId': ?kustoDatabaseResourceId,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetKustoDatabaseDataSetResult.fromMap(Map<String, dynamic> map) {
    return GetKustoDatabaseDataSetResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSetId: (() { final guardedValue = map['dataSetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kustoDatabaseResourceId: (() { final guardedValue = map['kustoDatabaseResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
