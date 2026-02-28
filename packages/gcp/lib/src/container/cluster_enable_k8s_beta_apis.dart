// ignore_for_file: unused_element, unnecessary_cast

class ClusterEnableK8sBetaApis {
  /// Enabled Kubernetes Beta APIs.
  final List<String> enabledApis;

  /// Creates a new [ClusterEnableK8sBetaApis].
  /// [enabledApis] Enabled Kubernetes Beta APIs.
  ClusterEnableK8sBetaApis({
    required this.enabledApis,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabledApis'] = enabledApis;
    return map;
  }

  factory ClusterEnableK8sBetaApis.fromMap(Map<String, dynamic> map) {
    return ClusterEnableK8sBetaApis(
      enabledApis: (map['enabledApis'] as List).cast<String>(),
    );
  }
}
