// ignore_for_file: unused_element, unnecessary_cast

import 'plan_response.dart';
import 'registration_definition_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRegistrationDefinition.
class GetRegistrationDefinitionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The fully qualified path of the registration definition.
  final String id;
  /// The name of the registration definition.
  final String name;
  /// The details for the Managed Services offer’s plan in Azure Marketplace.
  final PlanResponse? plan;
  /// The properties of a registration definition.
  final RegistrationDefinitionPropertiesResponse properties;
  /// The metadata for the registration assignment resource.
  final SystemDataResponse systemData;
  /// The type of the Azure resource (Microsoft.ManagedServices/registrationDefinitions).
  final String type;

  /// Creates a new [GetRegistrationDefinitionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The fully qualified path of the registration definition.
  /// [name] The name of the registration definition.
  /// [plan] The details for the Managed Services offer’s plan in Azure Marketplace.
  /// [properties] The properties of a registration definition.
  /// [systemData] The metadata for the registration assignment resource.
  /// [type] The type of the Azure resource (Microsoft.ManagedServices/registrationDefinitions).
  const GetRegistrationDefinitionResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    this.plan,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'plan': ?plan?.toMap(),
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetRegistrationDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetRegistrationDefinitionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      properties: RegistrationDefinitionPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
