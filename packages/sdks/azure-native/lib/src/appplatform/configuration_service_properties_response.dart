// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_service_instance_response.dart';
import 'configuration_service_resource_requests_response.dart';
import 'configuration_service_settings_response.dart';

/// Application Configuration Service properties payload
class ConfigurationServicePropertiesResponse {
  /// The generation of the Application Configuration Service.
  final pulumi.Input<String>? generation;
  /// Collection of instances belong to Application Configuration Service.
  final pulumi.Input<List<ConfigurationServiceInstanceResponse>> instances;
  /// State of the Application Configuration Service.
  final pulumi.Input<String> provisioningState;
  /// The requested resource quantity for required CPU and Memory.
  final pulumi.Input<ConfigurationServiceResourceRequestsResponse> resourceRequests;
  /// The settings of Application Configuration Service.
  final pulumi.Input<ConfigurationServiceSettingsResponse>? settings;

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
      'instances': pulumi.Input.mapInputValue<List<ConfigurationServiceInstanceResponse>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<ConfigurationServiceInstanceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'resourceRequests': pulumi.Input.mapInputValue<ConfigurationServiceResourceRequestsResponse, Map<String, dynamic>>(resourceRequests, (value) => value.toMap()),
      'settings': ?pulumi.Input.mapOptionalInputValue<ConfigurationServiceSettingsResponse, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory ConfigurationServicePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationServicePropertiesResponse(
      generation: map['generation'] == null ? null : (map['generation']! as String).input(),
      instances: (pulumi.Input.decodeList<ConfigurationServiceInstanceResponse>(map['instances'], (value) => ConfigurationServiceInstanceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      resourceRequests: (ConfigurationServiceResourceRequestsResponse.fromMap((map['resourceRequests'] as Map).cast<String, dynamic>())).input(),
      settings: map['settings'] == null ? null : (ConfigurationServiceSettingsResponse.fromMap((map['settings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

