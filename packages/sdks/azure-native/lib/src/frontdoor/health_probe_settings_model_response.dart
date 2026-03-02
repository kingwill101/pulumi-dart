// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Load balancing settings for a backend pool
class HealthProbeSettingsModelResponse {
  /// Whether to enable health probes to be made against backends defined under backendPools. Health probes can only be disabled if there is a single enabled backend in single enabled backend pool.
  final pulumi.Input<String>? enabledState;
  /// Configures which HTTP method to use to probe the backends defined under backendPools.
  final pulumi.Input<String>? healthProbeMethod;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The number of seconds between health probes.
  final pulumi.Input<int>? intervalInSeconds;
  /// Resource name.
  final pulumi.Input<String>? name;
  /// The path to use for the health probe. Default is /
  final pulumi.Input<String>? path;
  /// Protocol scheme to use for this probe
  final pulumi.Input<String>? protocol;
  /// Resource status.
  final pulumi.Input<String> resourceState;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [HealthProbeSettingsModelResponse].
  /// [enabledState] Whether to enable health probes to be made against backends defined under backendPools. Health probes can only be disabled if there is a single enabled backend in single enabled backend pool.
  /// [healthProbeMethod] Configures which HTTP method to use to probe the backends defined under backendPools.
  /// [id] Resource ID.
  /// [intervalInSeconds] The number of seconds between health probes.
  /// [name] Resource name.
  /// [path] The path to use for the health probe. Default is /
  /// [protocol] Protocol scheme to use for this probe
  /// [resourceState] Resource status.
  /// [type] Resource type.
  HealthProbeSettingsModelResponse({
    this.enabledState,
    this.healthProbeMethod,
    this.id,
    this.intervalInSeconds,
    this.name,
    this.path,
    this.protocol,
    required this.resourceState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledState': ?enabledState,
      'healthProbeMethod': ?healthProbeMethod,
      'id': ?id,
      'intervalInSeconds': ?intervalInSeconds,
      'name': ?name,
      'path': ?path,
      'protocol': ?protocol,
      'resourceState': resourceState,
      'type': type,
    };
  }

  factory HealthProbeSettingsModelResponse.fromMap(Map<String, dynamic> map) {
    return HealthProbeSettingsModelResponse(
      enabledState: map['enabledState'] == null ? null : (map['enabledState'] as String).input(),
      healthProbeMethod: map['healthProbeMethod'] == null ? null : (map['healthProbeMethod'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      intervalInSeconds: map['intervalInSeconds'] == null ? null : (map['intervalInSeconds'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      resourceState: (map['resourceState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

