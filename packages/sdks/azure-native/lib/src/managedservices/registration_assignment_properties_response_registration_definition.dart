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
  const RegistrationAssignmentPropertiesResponseRegistrationDefinition({
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
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistrationAssignmentPropertiesResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      systemData: pulumi.Input.fromValue(SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

