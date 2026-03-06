// ignore_for_file: unused_element, unnecessary_cast

import 'guest_configuration_assignment_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getGuestConfigurationHCRPAssignment.
class GetGuestConfigurationHCRPAssignmentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// ARM resource id of the guest configuration assignment.
  final String id;
  /// Region where the VM is located.
  final String? location;
  /// The guest configuration assignment name.
  final String name;
  /// Properties of the Guest configuration assignment.
  final GuestConfigurationAssignmentPropertiesResponse properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetGuestConfigurationHCRPAssignmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] ARM resource id of the guest configuration assignment.
  /// [location] Region where the VM is located.
  /// [name] The guest configuration assignment name.
  /// [properties] Properties of the Guest configuration assignment.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource.
  const GetGuestConfigurationHCRPAssignmentResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetGuestConfigurationHCRPAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetGuestConfigurationHCRPAssignmentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: GuestConfigurationAssignmentPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

