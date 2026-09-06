// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSynapseWorkspaceSqlPoolTableDataSet.
class GetSynapseWorkspaceSqlPoolTableDataSetResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Unique id for identifying a data set resource
  final String? dataSetId;
  /// The resource id of the azure resource
  final String? id;
  /// Kind of data set.
  /// Expected value is 'SynapseWorkspaceSqlPoolTable'.
  final String? kind;
  /// Name of the azure resource
  final String? name;
  /// Resource id of the Synapse Workspace SQL Pool Table
  final String? synapseWorkspaceSqlPoolTableResourceId;
  /// System Data of the Azure resource.
  final SystemDataResponse? systemData;
  /// Type of the azure resource
  final String? type;

  /// Creates a new [GetSynapseWorkspaceSqlPoolTableDataSetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataSetId] Unique id for identifying a data set resource
  /// [id] The resource id of the azure resource
  /// [kind] Kind of data set.
  /// [name] Name of the azure resource
  /// [synapseWorkspaceSqlPoolTableResourceId] Resource id of the Synapse Workspace SQL Pool Table
  /// [systemData] System Data of the Azure resource.
  /// [type] Type of the azure resource
  const GetSynapseWorkspaceSqlPoolTableDataSetResult({
    this.azureApiVersion,
    this.dataSetId,
    this.id,
    this.kind,
    this.name,
    this.synapseWorkspaceSqlPoolTableResourceId,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dataSetId': ?dataSetId,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'synapseWorkspaceSqlPoolTableResourceId': ?synapseWorkspaceSqlPoolTableResourceId,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetSynapseWorkspaceSqlPoolTableDataSetResult.fromMap(Map<String, dynamic> map) {
    return GetSynapseWorkspaceSqlPoolTableDataSetResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSetId: (() { final guardedValue = map['dataSetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      synapseWorkspaceSqlPoolTableResourceId: (() { final guardedValue = map['synapseWorkspaceSqlPoolTableResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
