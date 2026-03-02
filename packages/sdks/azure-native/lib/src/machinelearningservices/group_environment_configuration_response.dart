// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'probe_settings_response.dart';
import 'string_string_key_value_pair_response.dart';

/// Environment configuration options.
class GroupEnvironmentConfigurationResponse {
  /// ARM resource ID of the environment specification for the inference pool.
  final pulumi.Input<String>? environmentId;
  /// Environment variables configuration for the inference pool.
  final pulumi.Input<List<StringStringKeyValuePairResponse>>? environmentVariables;
  /// Liveness probe monitors the health of the container regularly.
  final pulumi.Input<ProbeSettingsResponse>? livenessProbe;
  /// Readiness probe validates if the container is ready to serve traffic. The properties and defaults are the same as liveness probe.
  final pulumi.Input<ProbeSettingsResponse>? readinessProbe;
  /// This verifies whether the application within a container is started. Startup probes run before any other probe, and, unless it finishes successfully, disables other probes.
  final pulumi.Input<ProbeSettingsResponse>? startupProbe;

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
      'environmentVariables': ?pulumi.Input.mapOptionalInputValue<List<StringStringKeyValuePairResponse>, List<Map<String, dynamic>>>(environmentVariables, (value) => pulumi.Input.encodeList<StringStringKeyValuePairResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'livenessProbe': ?pulumi.Input.mapOptionalInputValue<ProbeSettingsResponse, Map<String, dynamic>>(livenessProbe, (value) => value.toMap()),
      'readinessProbe': ?pulumi.Input.mapOptionalInputValue<ProbeSettingsResponse, Map<String, dynamic>>(readinessProbe, (value) => value.toMap()),
      'startupProbe': ?pulumi.Input.mapOptionalInputValue<ProbeSettingsResponse, Map<String, dynamic>>(startupProbe, (value) => value.toMap()),
    };
  }

  factory GroupEnvironmentConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return GroupEnvironmentConfigurationResponse(
      environmentId: map['environmentId'] == null ? null : (map['environmentId']! as String).input(),
      environmentVariables: map['environmentVariables'] == null ? null : (pulumi.Input.decodeList<StringStringKeyValuePairResponse>(map['environmentVariables']!, (value) => StringStringKeyValuePairResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      livenessProbe: map['livenessProbe'] == null ? null : (ProbeSettingsResponse.fromMap((map['livenessProbe']! as Map).cast<String, dynamic>())).input(),
      readinessProbe: map['readinessProbe'] == null ? null : (ProbeSettingsResponse.fromMap((map['readinessProbe']! as Map).cast<String, dynamic>())).input(),
      startupProbe: map['startupProbe'] == null ? null : (ProbeSettingsResponse.fromMap((map['startupProbe']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

