// ignore_for_file: unused_element, unnecessary_cast

import 'registration_assignment_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRegistrationAssignment.
class GetRegistrationAssignmentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The fully qualified path of the registration assignment.
  final String id;
  /// The name of the registration assignment.
  final String name;
  /// The properties of a registration assignment.
  final RegistrationAssignmentPropertiesResponse properties;
  /// The metadata for the registration assignment resource.
  final SystemDataResponse systemData;
  /// The type of the Azure resource (Microsoft.ManagedServices/registrationAssignments).
  final String type;

  /// Creates a new [GetRegistrationAssignmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The fully qualified path of the registration assignment.
  /// [name] The name of the registration assignment.
  /// [properties] The properties of a registration assignment.
  /// [systemData] The metadata for the registration assignment resource.
  /// [type] The type of the Azure resource (Microsoft.ManagedServices/registrationAssignments).
  const GetRegistrationAssignmentResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetRegistrationAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetRegistrationAssignmentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: RegistrationAssignmentPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

