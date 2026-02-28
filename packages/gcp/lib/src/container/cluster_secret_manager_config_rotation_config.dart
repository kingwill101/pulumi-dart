// ignore_for_file: unused_element, unnecessary_cast

class ClusterSecretManagerConfigRotationConfig {
  /// Enable the roation in Sync as K8s secret feature for this cluster.
  final bool enabled;

  /// The interval between two consecutive rotations. Default rotation interval is 2 minutes.
  final String? rotationInterval;

  /// Creates a new [ClusterSecretManagerConfigRotationConfig].
  /// [enabled] Enable the roation in Sync as K8s secret feature for this cluster.
  /// [rotationInterval] The interval between two consecutive rotations. Default rotation interval is 2 minutes.
  ClusterSecretManagerConfigRotationConfig({
    required this.enabled,
    this.rotationInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final rotationIntervalValue = rotationInterval;
    if (rotationIntervalValue != null) {
      map['rotationInterval'] = rotationIntervalValue;
    }
    return map;
  }

  factory ClusterSecretManagerConfigRotationConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterSecretManagerConfigRotationConfig(
      enabled: map['enabled'] as bool,
      rotationInterval: map['rotationInterval'] == null
          ? null
          : map['rotationInterval'] as String,
    );
  }
}
