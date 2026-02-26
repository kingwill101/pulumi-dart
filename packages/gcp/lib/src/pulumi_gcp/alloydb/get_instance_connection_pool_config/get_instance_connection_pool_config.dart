// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceConnectionPoolConfig {
  /// Whether to enabled Managed Connection Pool.
  final bool enabled;
  final Map<String, String> flags;

  /// The number of running poolers per instance.
  final int poolerCount;

  GetInstanceConnectionPoolConfig({
    required this.enabled,
    required this.flags,
    required this.poolerCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['flags'] = flags;
    map['poolerCount'] = poolerCount;
    return map;
  }

  factory GetInstanceConnectionPoolConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceConnectionPoolConfig(
      enabled: map['enabled'] as bool,
      flags: (map['flags'] as Map).cast<String, String>(),
      poolerCount: map['poolerCount'] as int,
    );
  }
}
