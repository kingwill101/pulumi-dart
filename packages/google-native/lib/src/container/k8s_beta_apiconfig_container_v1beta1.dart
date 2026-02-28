// ignore_for_file: unused_element, unnecessary_cast

/// Kubernetes open source beta apis enabled on the cluster.
class K8sBetaAPIConfigContainerV1beta1 {
  /// api name, e.g. storage.k8s.io/v1beta1/csistoragecapacities.
  final List<String>? enabledApis;

  /// Creates a new [K8sBetaAPIConfigContainerV1beta1].
  /// [enabledApis] api name, e.g. storage.k8s.io/v1beta1/csistoragecapacities.
  K8sBetaAPIConfigContainerV1beta1({
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

  factory K8sBetaAPIConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return K8sBetaAPIConfigContainerV1beta1(
      enabledApis: map['enabledApis'] == null
          ? null
          : (map['enabledApis'] as List).cast<String>(),
    );
  }
}
