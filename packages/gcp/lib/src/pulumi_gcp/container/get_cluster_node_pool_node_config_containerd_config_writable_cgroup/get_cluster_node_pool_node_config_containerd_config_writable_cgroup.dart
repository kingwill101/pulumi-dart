// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup {
  /// Whether writable cgroups are enabled.
  final bool enabled;

  GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup(
      enabled: map['enabled'] as bool,
    );
  }
}
