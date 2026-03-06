// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getVirtualEndpoint.
class GetVirtualEndpointResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Type of endpoint for the virtual endpoints.
  final String? endpointType;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// List of servers that one of the virtual endpoints can refer to.
  final List<String>? members;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// List of virtual endpoints for a server.
  final List<String> virtualEndpoints;

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
    required this.azureApiVersion,
    this.endpointType,
    required this.id,
    this.members,
    required this.name,
    required this.systemData,
    required this.type,
    required this.virtualEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'endpointType': ?endpointType,
      'id': id,
      'members': ?members,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
      'virtualEndpoints': virtualEndpoints,
    };
  }

  factory GetVirtualEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualEndpointResult(
      azureApiVersion: map['azureApiVersion'] as String,
      endpointType: (() { final guardedValue = map['endpointType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      virtualEndpoints: (map['virtualEndpoints'] as List).cast<String>(),
    );
  }
}

