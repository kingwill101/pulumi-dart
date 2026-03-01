// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup {
  /// Whether writable cgroups are enabled.
  final bool enabled;

  /// Creates a new [GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup].
  /// [enabled] Whether writable cgroups are enabled.
  GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup(
      enabled: map['enabled'] as bool,
    );
  }
}
