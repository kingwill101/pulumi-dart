// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for controlling master global access settings.
class PrivateClusterMasterGlobalAccessConfigResponse2 {
  /// Whenever master is accessible globally or not.
  final bool enabled;

  PrivateClusterMasterGlobalAccessConfigResponse2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory PrivateClusterMasterGlobalAccessConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return PrivateClusterMasterGlobalAccessConfigResponse2(
      enabled: map['enabled'] as bool,
    );
  }
}
