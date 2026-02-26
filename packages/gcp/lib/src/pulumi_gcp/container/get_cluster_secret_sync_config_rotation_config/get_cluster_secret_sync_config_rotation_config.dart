// ignore_for_file: unused_element, unnecessary_cast

class GetClusterSecretSyncConfigRotationConfig {
  /// Enable the Secret sync auto rotation.
  final bool enabled;

  /// The interval between two consecutive rotations. Default rotation interval is 2 minutes
  final String rotationInterval;

  GetClusterSecretSyncConfigRotationConfig({
    required this.enabled,
    required this.rotationInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['rotationInterval'] = rotationInterval;
    return map;
  }

  factory GetClusterSecretSyncConfigRotationConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterSecretSyncConfigRotationConfig(
      enabled: map['enabled'] as bool,
      rotationInterval: map['rotationInterval'] as String,
    );
  }
}
