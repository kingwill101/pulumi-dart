// ignore_for_file: unused_element, unnecessary_cast

import 'guest_configuration_assignment_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getGuestConfigurationAssignment.
class GetGuestConfigurationAssignmentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// ARM resource id of the guest configuration assignment.
  final String? id;
  /// Region where the VM is located.
  final String? location;
  /// The guest configuration assignment name.
  final String? name;
  /// Properties of the Guest configuration assignment.
  final GuestConfigurationAssignmentPropertiesResponse? properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource.
  final String? type;

  /// Creates a new [GetGuestConfigurationAssignmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] ARM resource id of the guest configuration assignment.
  /// [location] Region where the VM is located.
  /// [name] The guest configuration assignment name.
  /// [properties] Properties of the Guest configuration assignment.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource.
  const GetGuestConfigurationAssignmentResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.properties,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetGuestConfigurationAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetGuestConfigurationAssignmentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return GuestConfigurationAssignmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
