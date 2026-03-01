// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'probe_settings_response.dart';
import 'string_string_key_value_pair_response.dart';

/// Environment configuration options.
class GroupEnvironmentConfigurationResponse {
  /// ARM resource ID of the environment specification for the inference pool.
  final String? environmentId;
  /// Environment variables configuration for the inference pool.
  final List<StringStringKeyValuePairResponse>? environmentVariables;
  /// Liveness probe monitors the health of the container regularly.
  final ProbeSettingsResponse? livenessProbe;
  /// Readiness probe validates if the container is ready to serve traffic. The properties and defaults are the same as liveness probe.
  final ProbeSettingsResponse? readinessProbe;
  /// This verifies whether the application within a container is started. Startup probes run before any other probe, and, unless it finishes successfully, disables other probes.
  final ProbeSettingsResponse? startupProbe;

  /// Creates a new [GroupEnvironmentConfigurationResponse].
  /// [environmentId] ARM resource ID of the environment specification for the inference pool.
  /// [environmentVariables] Environment variables configuration for the inference pool.
  /// [livenessProbe] Liveness probe monitors the health of the container regularly.
  /// [readinessProbe] Readiness probe validates if the container is ready to serve traffic. The properties and defaults are the same as liveness probe.
  /// [startupProbe] This verifies whether the application within a container is started. Startup probes run before any other probe, and, unless it finishes successfully, disables other probes.
  GroupEnvironmentConfigurationResponse({
    this.environmentId,
    this.environmentVariables,
    this.livenessProbe,
    this.readinessProbe,
    this.startupProbe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': ?environmentId,
      'environmentVariables': ?environmentVariables == null ? null : pulumi.Input.encodeList<StringStringKeyValuePairResponse, Map<String, dynamic>>(environmentVariables!, (value) => value.toMap()),
      'livenessProbe': ?livenessProbe == null ? null : livenessProbe!.toMap(),
      'readinessProbe': ?readinessProbe == null ? null : readinessProbe!.toMap(),
      'startupProbe': ?startupProbe == null ? null : startupProbe!.toMap(),
    };
  }

  factory GroupEnvironmentConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return GroupEnvironmentConfigurationResponse(
      environmentId: map['environmentId'] == null ? null : map['environmentId'] as String,
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Input.decodeList<StringStringKeyValuePairResponse>(map['environmentVariables'], (value) => StringStringKeyValuePairResponse.fromMap((value as Map).cast<String, dynamic>())),
      livenessProbe: map['livenessProbe'] == null ? null : ProbeSettingsResponse.fromMap((map['livenessProbe'] as Map).cast<String, dynamic>()),
      readinessProbe: map['readinessProbe'] == null ? null : ProbeSettingsResponse.fromMap((map['readinessProbe'] as Map).cast<String, dynamic>()),
      startupProbe: map['startupProbe'] == null ? null : ProbeSettingsResponse.fromMap((map['startupProbe'] as Map).cast<String, dynamic>()),
    );
  }
}

