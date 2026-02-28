// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigWritableCgroups {
  /// Whether writable cgroups are enabled.
  final bool enabled;

  /// Creates a new [ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigWritableCgroups].
  /// [enabled] Whether writable cgroups are enabled.
  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigWritableCgroups({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigWritableCgroups.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigWritableCgroups(
      enabled: map['enabled'] as bool,
    );
  }
}
