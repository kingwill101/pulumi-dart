// ignore_for_file: unused_element, unnecessary_cast

import 'plan_response.dart';
import 'registration_assignment_properties_response_properties.dart';
import 'system_data_response.dart';

/// The registration definition associated with the registration assignment.
class RegistrationAssignmentPropertiesResponseRegistrationDefinition {
  /// The fully qualified path of the registration definition.
  final String id;
  /// The name of the registration definition.
  final String name;
  /// The details for the Managed Services offer’s plan in Azure Marketplace.
  final PlanResponse? plan;
  /// The properties of the registration definition associated with the registration assignment.
  final RegistrationAssignmentPropertiesResponseProperties? properties;
  /// The metadata for the registration definition resource.
  final SystemDataResponse systemData;
  /// The type of the Azure resource (Microsoft.ManagedServices/registrationDefinitions).
  final String type;

  /// Creates a new [RegistrationAssignmentPropertiesResponseRegistrationDefinition].
  /// [id] The fully qualified path of the registration definition.
  /// [name] The name of the registration definition.
  /// [plan] The details for the Managed Services offer’s plan in Azure Marketplace.
  /// [properties] The properties of the registration definition associated with the registration assignment.
  /// [systemData] The metadata for the registration definition resource.
  /// [type] The type of the Azure resource (Microsoft.ManagedServices/registrationDefinitions).
  RegistrationAssignmentPropertiesResponseRegistrationDefinition({
    required this.id,
    required this.name,
    this.plan,
    this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'plan': ?plan == null ? null : plan!.toMap(),
      'properties': ?properties == null ? null : properties!.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory RegistrationAssignmentPropertiesResponseRegistrationDefinition.fromMap(Map<String, dynamic> map) {
    return RegistrationAssignmentPropertiesResponseRegistrationDefinition(
      id: map['id'] as String,
      name: map['name'] as String,
      plan: map['plan'] == null ? null : PlanResponse.fromMap((map['plan'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null ? null : RegistrationAssignmentPropertiesResponseProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

