// ignore_for_file: unused_element, unnecessary_cast

class ResourcePolicyDiskConsistencyGroupPolicy {
  /// Enable disk consistency on the resource policy.
  final bool enabled;

  ResourcePolicyDiskConsistencyGroupPolicy({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ResourcePolicyDiskConsistencyGroupPolicy.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyDiskConsistencyGroupPolicy(
      enabled: map['enabled'] as bool,
    );
  }
}
