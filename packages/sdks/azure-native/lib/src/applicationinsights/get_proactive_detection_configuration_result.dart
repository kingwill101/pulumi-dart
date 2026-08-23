// ignore_for_file: unused_element, unnecessary_cast

import 'application_insights_component_proactive_detection_configuration_properties_response.dart';

/// Result data returned by getProactiveDetectionConfiguration.
class GetProactiveDetectionConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Azure resource Id
  final String id;
  /// Resource location
  final String? location;
  /// Azure resource name
  final String? name;
  /// Properties that define a ProactiveDetection configuration.
  final ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponse properties;
  /// Azure resource type
  final String type;

  /// Creates a new [GetProactiveDetectionConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Azure resource Id
  /// [location] Resource location
  /// [name] Azure resource name
  /// [properties] Properties that define a ProactiveDetection configuration.
  /// [type] Azure resource type
  const GetProactiveDetectionConfigurationResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': ?name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetProactiveDetectionConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetProactiveDetectionConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
