// ignore_for_file: unused_element, unnecessary_cast

import 'registration_assignment_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRegistrationAssignment.
class GetRegistrationAssignmentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The fully qualified path of the registration assignment.
  final String? id;
  /// The name of the registration assignment.
  final String? name;
  /// The properties of a registration assignment.
  final RegistrationAssignmentPropertiesResponse? properties;
  /// The metadata for the registration assignment resource.
  final SystemDataResponse? systemData;
  /// The type of the Azure resource (Microsoft.ManagedServices/registrationAssignments).
  final String? type;

  /// Creates a new [GetRegistrationAssignmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The fully qualified path of the registration assignment.
  /// [name] The name of the registration assignment.
  /// [properties] The properties of a registration assignment.
  /// [systemData] The metadata for the registration assignment resource.
  /// [type] The type of the Azure resource (Microsoft.ManagedServices/registrationAssignments).
  const GetRegistrationAssignmentResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetRegistrationAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetRegistrationAssignmentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return RegistrationAssignmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
