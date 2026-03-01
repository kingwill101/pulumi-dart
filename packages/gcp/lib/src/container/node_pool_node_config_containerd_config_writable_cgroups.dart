// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigContainerdConfigWritableCgroups {
  /// Whether writable cgroups are enabled.
  final bool enabled;

  /// Creates a new [NodePoolNodeConfigContainerdConfigWritableCgroups].
  /// [enabled] Whether writable cgroups are enabled.
  NodePoolNodeConfigContainerdConfigWritableCgroups({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory NodePoolNodeConfigContainerdConfigWritableCgroups.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodePoolNodeConfigContainerdConfigWritableCgroups(
      enabled: map['enabled'] as bool,
    );
  }
}
