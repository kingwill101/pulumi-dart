// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getManagedClusterApplicationType.
class GetManagedClusterApplicationTypeResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Azure resource identifier.
  final String id;
  /// Resource location depends on the parent resource.
  final String? location;
  /// Azure resource name.
  final String name;
  /// The current deployment or provisioning state, which only appears in the response.
  final String provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Azure resource tags.
  final Map<String, String>? tags;
  /// Azure resource type.
  final String type;

  /// Creates a new [GetManagedClusterApplicationTypeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Azure resource identifier.
  /// [location] Resource location depends on the parent resource.
  /// [name] Azure resource name.
  /// [provisioningState] The current deployment or provisioning state, which only appears in the response.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Azure resource tags.
  /// [type] Azure resource type.
  GetManagedClusterApplicationTypeResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetManagedClusterApplicationTypeResult.fromMap(Map<String, dynamic> map) {
    return GetManagedClusterApplicationTypeResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

