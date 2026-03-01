// ignore_for_file: unused_element, unnecessary_cast

class InstanceConnectionPoolConfig {
  /// Whether to enabled Managed Connection Pool.
  final bool enabled;
  final Map<String, String>? flags;

  /// (Output)
  /// The number of running poolers per instance.
  final int? poolerCount;

  /// Creates a new [InstanceConnectionPoolConfig].
  /// [enabled] Whether to enabled Managed Connection Pool.
  /// [flags] Optional.
  /// [poolerCount] (Output)
  InstanceConnectionPoolConfig({
    required this.enabled,
    this.flags,
    this.poolerCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'flags': ?flags,
      'poolerCount': ?poolerCount,
    };
  }

  factory InstanceConnectionPoolConfig.fromMap(Map<String, dynamic> map) {
    return InstanceConnectionPoolConfig(
      enabled: map['enabled'] as bool,
      flags: map['flags'] == null
          ? null
          : (map['flags'] as Map).cast<String, String>(),
      poolerCount: map['poolerCount'] == null
          ? null
          : map['poolerCount'] as int,
    );
  }
}
