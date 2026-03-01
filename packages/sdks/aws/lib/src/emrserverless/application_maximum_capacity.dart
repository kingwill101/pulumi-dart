// ignore_for_file: unused_element, unnecessary_cast


class ApplicationMaximumCapacity {
  /// The maximum allowed CPU for an application.
  final String cpu;
  /// The maximum allowed disk for an application.
  final String? disk;
  /// The maximum allowed resources for an application.
  final String memory;

  /// Creates a new [ApplicationMaximumCapacity].
  /// [cpu] The maximum allowed CPU for an application.
  /// [disk] The maximum allowed disk for an application.
  /// [memory] The maximum allowed resources for an application.
  ApplicationMaximumCapacity({
    required this.cpu,
    this.disk,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'disk': ?disk,
      'memory': memory,
    };
  }

  factory ApplicationMaximumCapacity.fromMap(Map<String, dynamic> map) {
    return ApplicationMaximumCapacity(
      cpu: map['cpu'] as String,
      disk: map['disk'] == null ? null : map['disk'] as String,
      memory: map['memory'] as String,
    );
  }
}

