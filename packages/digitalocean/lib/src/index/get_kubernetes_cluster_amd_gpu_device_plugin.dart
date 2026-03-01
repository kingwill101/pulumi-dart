// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesClusterAmdGpuDevicePlugin {
  final bool enabled;

  /// Creates a new [GetKubernetesClusterAmdGpuDevicePlugin].
  /// [enabled] Required.
  GetKubernetesClusterAmdGpuDevicePlugin({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetKubernetesClusterAmdGpuDevicePlugin.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterAmdGpuDevicePlugin(
      enabled: map['enabled'] as bool,
    );
  }
}

