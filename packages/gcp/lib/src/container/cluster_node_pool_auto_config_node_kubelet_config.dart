// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolAutoConfigNodeKubeletConfig {
  /// Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  final String? insecureKubeletReadonlyPortEnabled;

  /// Creates a new [ClusterNodePoolAutoConfigNodeKubeletConfig].
  /// [insecureKubeletReadonlyPortEnabled] Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  ClusterNodePoolAutoConfigNodeKubeletConfig({
    this.insecureKubeletReadonlyPortEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final insecureKubeletReadonlyPortEnabledValue =
        insecureKubeletReadonlyPortEnabled;
    if (insecureKubeletReadonlyPortEnabledValue != null) {
      map['insecureKubeletReadonlyPortEnabled'] =
          insecureKubeletReadonlyPortEnabledValue;
    }
    return map;
  }

  factory ClusterNodePoolAutoConfigNodeKubeletConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolAutoConfigNodeKubeletConfig(
      insecureKubeletReadonlyPortEnabled:
          map['insecureKubeletReadonlyPortEnabled'] == null
              ? null
              : map['insecureKubeletReadonlyPortEnabled'] as String,
    );
  }
}
