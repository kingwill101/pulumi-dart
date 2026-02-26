// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigContainerdConfigWritableCgroup {
  /// Whether writable cgroups are enabled.
  final bool enabled;

  GetClusterNodeConfigContainerdConfigWritableCgroup({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterNodeConfigContainerdConfigWritableCgroup.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodeConfigContainerdConfigWritableCgroup(
      enabled: map['enabled'] as bool,
    );
  }
}
