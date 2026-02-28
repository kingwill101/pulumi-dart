// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigWritableCgroup {
  /// Whether writable cgroups are enabled.
  final bool enabled;

  /// Creates a new [GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigWritableCgroup].
  /// [enabled] Whether writable cgroups are enabled.
  GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigWritableCgroup({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigWritableCgroup.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigWritableCgroup(
      enabled: map['enabled'] as bool,
    );
  }
}
