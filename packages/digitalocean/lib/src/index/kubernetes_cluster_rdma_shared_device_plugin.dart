// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterRdmaSharedDevicePlugin {
  /// Boolean flag whether the component is enabled or not.
  final bool enabled;

  /// Creates a new [KubernetesClusterRdmaSharedDevicePlugin].
  /// [enabled] Boolean flag whether the component is enabled or not.
  KubernetesClusterRdmaSharedDevicePlugin({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory KubernetesClusterRdmaSharedDevicePlugin.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterRdmaSharedDevicePlugin(
      enabled: map['enabled'] as bool,
    );
  }
}

