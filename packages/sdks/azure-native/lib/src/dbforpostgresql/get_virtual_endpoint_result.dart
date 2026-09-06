// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getVirtualEndpoint.
class GetVirtualEndpointResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Type of endpoint for the virtual endpoints.
  final String? endpointType;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// List of servers that one of the virtual endpoints can refer to.
  final List<String>? members;
  /// The name of the resource
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// List of virtual endpoints for a server.
  final List<String>? virtualEndpoints;

  /// Creates a new [GetVirtualEndpointResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [endpointType] Type of endpoint for the virtual endpoints.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [members] List of servers that one of the virtual endpoints can refer to.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualEndpoints] List of virtual endpoints for a server.
  const GetVirtualEndpointResult({
    this.azureApiVersion,
    this.endpointType,
    this.id,
    this.members,
    this.name,
    this.systemData,
    this.type,
    this.virtualEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'endpointType': ?endpointType,
      'id': ?id,
      'members': ?members,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'virtualEndpoints': ?virtualEndpoints,
    };
  }

  factory GetVirtualEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualEndpointResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointType: (() { final guardedValue = map['endpointType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualEndpoints: (() { final guardedValue = map['virtualEndpoints']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
