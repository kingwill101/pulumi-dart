// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigGvnic {
  /// Whether or not gvnic is enabled
  final bool enabled;

  /// Creates a new [GetClusterNodePoolNodeConfigGvnic].
  /// [enabled] Whether or not gvnic is enabled
  GetClusterNodePoolNodeConfigGvnic({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterNodePoolNodeConfigGvnic.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigGvnic(
      enabled: map['enabled'] as bool,
    );
  }
}
