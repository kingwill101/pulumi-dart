// ignore_for_file: unused_element, unnecessary_cast

import 'resource_location_data_contract_response.dart';

/// Result data returned by getGateway.
class GetGatewayResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gateway description
  final String? description;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Gateway location.
  final ResourceLocationDataContractResponse? locationData;
  /// The name of the resource
  final String? name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetGatewayResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Gateway description
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [locationData] Gateway location.
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetGatewayResult({
    this.azureApiVersion,
    this.description,
    this.id,
    this.locationData,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'id': ?id,
      'locationData': ?locationData?.toMap(),
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locationData: (() { final guardedValue = map['locationData']; if (guardedValue == null) return null; return ResourceLocationDataContractResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
