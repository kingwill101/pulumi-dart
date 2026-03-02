// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_response.dart';
import 'registration_assignment_properties_response_properties.dart';
import 'system_data_response.dart';

/// The registration definition associated with the registration assignment.
class RegistrationAssignmentPropertiesResponseRegistrationDefinition {
  /// The fully qualified path of the registration definition.
  final pulumi.Input<String> id;
  /// The name of the registration definition.
  final pulumi.Input<String> name;
  /// The details for the Managed Services offer’s plan in Azure Marketplace.
  final pulumi.Input<PlanResponse>? plan;
  /// The properties of the registration definition associated with the registration assignment.
  final pulumi.Input<RegistrationAssignmentPropertiesResponseProperties>? properties;
  /// The metadata for the registration definition resource.
  final pulumi.Input<SystemDataResponse> systemData;
  /// The type of the Azure resource (Microsoft.ManagedServices/registrationDefinitions).
  final pulumi.Input<String> type;

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
      'plan': ?pulumi.Input.mapOptionalInputValue<PlanResponse, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<RegistrationAssignmentPropertiesResponseProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'type': type,
    };
  }

  factory RegistrationAssignmentPropertiesResponseRegistrationDefinition.fromMap(Map<String, dynamic> map) {
    return RegistrationAssignmentPropertiesResponseRegistrationDefinition(
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      plan: map['plan'] == null ? null : (PlanResponse.fromMap((map['plan'] as Map).cast<String, dynamic>())).input(),
      properties: map['properties'] == null ? null : (RegistrationAssignmentPropertiesResponseProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      systemData: (SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

