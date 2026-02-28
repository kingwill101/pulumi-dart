// ignore_for_file: unused_element, unnecessary_cast

class GetResourcePolicyDiskConsistencyGroupPolicy {
  /// Enable disk consistency on the resource policy.
  final bool enabled;

  /// Creates a new [GetResourcePolicyDiskConsistencyGroupPolicy].
  /// [enabled] Enable disk consistency on the resource policy.
  GetResourcePolicyDiskConsistencyGroupPolicy({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetResourcePolicyDiskConsistencyGroupPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetResourcePolicyDiskConsistencyGroupPolicy(
      enabled: map['enabled'] as bool,
    );
  }
}
