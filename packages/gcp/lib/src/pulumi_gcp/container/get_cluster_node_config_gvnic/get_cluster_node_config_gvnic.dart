// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigGvnic {
  /// Whether or not gvnic is enabled
  final bool enabled;

  GetClusterNodeConfigGvnic({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterNodeConfigGvnic.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigGvnic(
      enabled: map['enabled'] as bool,
    );
  }
}
