// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Load balancing settings for a backend pool
class HealthProbeSettingsModel {
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

  /// Creates a new [HealthProbeSettingsModel].
  /// [enabledState] Whether to enable health probes to be made against backends defined under backendPools. Health probes can only be disabled if there is a single enabled backend in single enabled backend pool.
  /// [healthProbeMethod] Configures which HTTP method to use to probe the backends defined under backendPools.
  /// [id] Resource ID.
  /// [intervalInSeconds] The number of seconds between health probes.
  /// [name] Resource name.
  /// [path] The path to use for the health probe. Default is /
  /// [protocol] Protocol scheme to use for this probe
  HealthProbeSettingsModel({
    this.enabledState,
    this.healthProbeMethod,
    this.id,
    this.intervalInSeconds,
    this.name,
    this.path,
    this.protocol,
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
    };
  }

  factory HealthProbeSettingsModel.fromMap(Map<String, dynamic> map) {
    return HealthProbeSettingsModel(
      enabledState: map['enabledState'] == null ? null : (map['enabledState'] as String).input(),
      healthProbeMethod: map['healthProbeMethod'] == null ? null : (map['healthProbeMethod'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      intervalInSeconds: map['intervalInSeconds'] == null ? null : (map['intervalInSeconds'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
    );
  }
}

