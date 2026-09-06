// ignore_for_file: unused_element, unnecessary_cast

import 'dfpinstance_administrators_response.dart';
import 'system_data_response.dart';

/// Result data returned by getInstanceDetails.
class GetInstanceDetailsResult {
  /// A collection of DFP instance administrators
  final DFPInstanceAdministratorsResponse? administration;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Location of the DFP resource.
  final String? location;
  /// The name of the resource
  final String? name;
  /// The current deployment state of DFP resource. The provisioningState is to indicate states for resource provisioning.
  final String? provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// Key-value pairs of additional resource provisioning properties.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetInstanceDetailsResult].
  /// [administration] A collection of DFP instance administrators
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] Location of the DFP resource.
  /// [name] The name of the resource
  /// [provisioningState] The current deployment state of DFP resource. The provisioningState is to indicate states for resource provisioning.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Key-value pairs of additional resource provisioning properties.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetInstanceDetailsResult({
    this.administration,
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administration': ?administration?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetInstanceDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceDetailsResult(
      administration: (() { final guardedValue = map['administration']; if (guardedValue == null) return null; return DFPInstanceAdministratorsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
