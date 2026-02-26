// ignore_for_file: unused_element, unnecessary_cast

/// Kubernetes open source beta apis enabled on the cluster.
class K8sBetaAPIConfigResponse2 {
  /// api name, e.g. storage.k8s.io/v1beta1/csistoragecapacities.
  final List<String> enabledApis;

  K8sBetaAPIConfigResponse2({
    required this.enabledApis,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabledApis'] = enabledApis;
    return map;
  }

  factory K8sBetaAPIConfigResponse2.fromMap(Map<String, dynamic> map) {
    return K8sBetaAPIConfigResponse2(
      enabledApis: (map['enabledApis'] as List).cast<String>(),
    );
  }
}
