// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigContainerdConfigWritableCgroups {
  /// Whether writable cgroups are enabled.
  final bool enabled;

  ClusterNodeConfigContainerdConfigWritableCgroups({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterNodeConfigContainerdConfigWritableCgroups.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodeConfigContainerdConfigWritableCgroups(
      enabled: map['enabled'] as bool,
    );
  }
}
