// ignore_for_file: unused_element, unnecessary_cast

class GetClusterSecretManagerConfigRotationConfig {
  /// Enable the Secret manager auto rotation.
  final bool enabled;

  /// The interval between two consecutive rotations. Default rotation interval is 2 minutes
  final String rotationInterval;

  /// Creates a new [GetClusterSecretManagerConfigRotationConfig].
  /// [enabled] Enable the Secret manager auto rotation.
  /// [rotationInterval] The interval between two consecutive rotations. Default rotation interval is 2 minutes
  GetClusterSecretManagerConfigRotationConfig({
    required this.enabled,
    required this.rotationInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'rotationInterval': rotationInterval,
    };
  }

  factory GetClusterSecretManagerConfigRotationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterSecretManagerConfigRotationConfig(
      enabled: map['enabled'] as bool,
      rotationInterval: map['rotationInterval'] as String,
    );
  }
}
