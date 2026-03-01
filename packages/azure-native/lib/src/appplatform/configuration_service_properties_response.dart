// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_service_instance_response.dart';
import 'configuration_service_resource_requests_response.dart';
import 'configuration_service_settings_response.dart';

/// Application Configuration Service properties payload
class ConfigurationServicePropertiesResponse {
  /// The generation of the Application Configuration Service.
  final String? generation;
  /// Collection of instances belong to Application Configuration Service.
  final List<ConfigurationServiceInstanceResponse> instances;
  /// State of the Application Configuration Service.
  final String provisioningState;
  /// The requested resource quantity for required CPU and Memory.
  final ConfigurationServiceResourceRequestsResponse resourceRequests;
  /// The settings of Application Configuration Service.
  final ConfigurationServiceSettingsResponse? settings;

  /// Creates a new [ConfigurationServicePropertiesResponse].
  /// [generation] The generation of the Application Configuration Service.
  /// [instances] Collection of instances belong to Application Configuration Service.
  /// [provisioningState] State of the Application Configuration Service.
  /// [resourceRequests] The requested resource quantity for required CPU and Memory.
  /// [settings] The settings of Application Configuration Service.
  ConfigurationServicePropertiesResponse({
    this.generation,
    required this.instances,
    required this.provisioningState,
    required this.resourceRequests,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generation': ?generation,
      'instances': pulumi.Input.encodeList<ConfigurationServiceInstanceResponse, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'resourceRequests': resourceRequests.toMap(),
      'settings': ?settings == null ? null : settings!.toMap(),
    };
  }

  factory ConfigurationServicePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationServicePropertiesResponse(
      generation: map['generation'] == null ? null : map['generation'] as String,
      instances: pulumi.Input.decodeList<ConfigurationServiceInstanceResponse>(map['instances'], (value) => ConfigurationServiceInstanceResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      resourceRequests: ConfigurationServiceResourceRequestsResponse.fromMap((map['resourceRequests'] as Map).cast<String, dynamic>()),
      settings: map['settings'] == null ? null : ConfigurationServiceSettingsResponse.fromMap((map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}

