// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for controlling master global access settings.
class PrivateClusterMasterGlobalAccessConfigResponse {
  /// Whenever master is accessible globally or not.
  final bool enabled;

  PrivateClusterMasterGlobalAccessConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory PrivateClusterMasterGlobalAccessConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return PrivateClusterMasterGlobalAccessConfigResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
