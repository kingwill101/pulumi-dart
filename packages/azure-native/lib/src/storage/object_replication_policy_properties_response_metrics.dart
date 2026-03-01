// ignore_for_file: unused_element, unnecessary_cast


/// Optional. The object replication policy metrics feature options.
class ObjectReplicationPolicyPropertiesResponseMetrics {
  /// Indicates whether object replication metrics feature is enabled for the policy.
  final bool? enabled;

  /// Creates a new [ObjectReplicationPolicyPropertiesResponseMetrics].
  /// [enabled] Indicates whether object replication metrics feature is enabled for the policy.
  ObjectReplicationPolicyPropertiesResponseMetrics({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ObjectReplicationPolicyPropertiesResponseMetrics.fromMap(Map<String, dynamic> map) {
    return ObjectReplicationPolicyPropertiesResponseMetrics(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

