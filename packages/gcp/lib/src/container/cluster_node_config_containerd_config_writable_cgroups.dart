// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigContainerdConfigWritableCgroups {
  /// Whether writable cgroups are enabled.
  final bool enabled;

  /// Creates a new [ClusterNodeConfigContainerdConfigWritableCgroups].
  /// [enabled] Whether writable cgroups are enabled.
  ClusterNodeConfigContainerdConfigWritableCgroups({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ClusterNodeConfigContainerdConfigWritableCgroups.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodeConfigContainerdConfigWritableCgroups(
      enabled: map['enabled'] as bool,
    );
  }
}
