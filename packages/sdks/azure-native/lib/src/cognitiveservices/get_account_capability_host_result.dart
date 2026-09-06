// ignore_for_file: unused_element, unnecessary_cast

import 'capability_host_response.dart';

/// Result data returned by getAccountCapabilityHost.
class GetAccountCapabilityHostResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// [Required] Additional attributes of the entity.
  final CapabilityHostResponse? capabilityHostProperties;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAccountCapabilityHostResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [capabilityHostProperties] [Required] Additional attributes of the entity.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAccountCapabilityHostResult({
    this.azureApiVersion,
    this.capabilityHostProperties,
    this.id,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'capabilityHostProperties': ?capabilityHostProperties?.toMap(),
      'id': ?id,
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetAccountCapabilityHostResult.fromMap(Map<String, dynamic> map) {
    return GetAccountCapabilityHostResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capabilityHostProperties: (() { final guardedValue = map['capabilityHostProperties']; if (guardedValue == null) return null; return CapabilityHostResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
