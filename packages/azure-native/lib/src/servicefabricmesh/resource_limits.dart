// ignore_for_file: unused_element, unnecessary_cast


/// This type describes the resource limits for a given container. It describes the most amount of resources a container is allowed to use before being restarted.
class ResourceLimits {
  /// CPU limits in cores. At present, only full cores are supported.
  final double? cpu;
  /// The memory limit in GB.
  final double? memoryInGB;

  /// Creates a new [ResourceLimits].
  /// [cpu] CPU limits in cores. At present, only full cores are supported.
  /// [memoryInGB] The memory limit in GB.
  ResourceLimits({
    this.cpu,
    this.memoryInGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memoryInGB': ?memoryInGB,
    };
  }

  factory ResourceLimits.fromMap(Map<String, dynamic> map) {
    return ResourceLimits(
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      memoryInGB: map['memoryInGB'] == null ? null : map['memoryInGB'] as double,
    );
  }
}

