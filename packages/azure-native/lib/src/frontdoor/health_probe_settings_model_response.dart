// ignore_for_file: unused_element, unnecessary_cast


/// Load balancing settings for a backend pool
class HealthProbeSettingsModelResponse {
  /// Whether to enable health probes to be made against backends defined under backendPools. Health probes can only be disabled if there is a single enabled backend in single enabled backend pool.
  final String? enabledState;
  /// Configures which HTTP method to use to probe the backends defined under backendPools.
  final String? healthProbeMethod;
  /// Resource ID.
  final String? id;
  /// The number of seconds between health probes.
  final int? intervalInSeconds;
  /// Resource name.
  final String? name;
  /// The path to use for the health probe. Default is /
  final String? path;
  /// Protocol scheme to use for this probe
  final String? protocol;
  /// Resource status.
  final String resourceState;
  /// Resource type.
  final String type;

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
      enabledState: map['enabledState'] == null ? null : map['enabledState'] as String,
      healthProbeMethod: map['healthProbeMethod'] == null ? null : map['healthProbeMethod'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      intervalInSeconds: map['intervalInSeconds'] == null ? null : map['intervalInSeconds'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      resourceState: map['resourceState'] as String,
      type: map['type'] as String,
    );
  }
}

