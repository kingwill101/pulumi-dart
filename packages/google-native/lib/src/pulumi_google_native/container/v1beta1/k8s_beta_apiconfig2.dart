// ignore_for_file: unused_element, unnecessary_cast

/// Kubernetes open source beta apis enabled on the cluster.
class K8sBetaAPIConfig2 {
  /// api name, e.g. storage.k8s.io/v1beta1/csistoragecapacities.
  final List<String>? enabledApis;

  K8sBetaAPIConfig2({
    this.enabledApis,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledApisValue = enabledApis;
    if (enabledApisValue != null) {
      map['enabledApis'] = enabledApisValue;
    }
    return map;
  }

  factory K8sBetaAPIConfig2.fromMap(Map<String, dynamic> map) {
    return K8sBetaAPIConfig2(
      enabledApis: map['enabledApis'] == null
          ? null
          : (map['enabledApis'] as List).cast<String>(),
    );
  }
}
