// ignore_for_file: unused_element, unnecessary_cast

import 'dfpinstance_administrators_response.dart';
import 'system_data_response.dart';

/// Result data returned by getInstanceDetails.
class GetInstanceDetailsResult {
  /// A collection of DFP instance administrators
  final DFPInstanceAdministratorsResponse? administration;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Location of the DFP resource.
  final String location;
  /// The name of the resource
  final String name;
  /// The current deployment state of DFP resource. The provisioningState is to indicate states for resource provisioning.
  final String provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Key-value pairs of additional resource provisioning properties.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetInstanceDetailsResult({
    this.administration,
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administration': ?administration == null ? null : administration!.toMap(),
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetInstanceDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceDetailsResult(
      administration: map['administration'] == null ? null : DFPInstanceAdministratorsResponse.fromMap((map['administration']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

