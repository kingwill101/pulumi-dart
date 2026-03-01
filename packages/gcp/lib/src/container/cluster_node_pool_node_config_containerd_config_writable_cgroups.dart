// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigContainerdConfigWritableCgroups {
  /// Whether writable cgroups are enabled.
  final bool enabled;

  /// Creates a new [ClusterNodePoolNodeConfigContainerdConfigWritableCgroups].
  /// [enabled] Whether writable cgroups are enabled.
  ClusterNodePoolNodeConfigContainerdConfigWritableCgroups({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ClusterNodePoolNodeConfigContainerdConfigWritableCgroups.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodePoolNodeConfigContainerdConfigWritableCgroups(
      enabled: map['enabled'] as bool,
    );
  }
}
