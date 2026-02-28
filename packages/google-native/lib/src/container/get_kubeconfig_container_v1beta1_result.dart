// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getKubeconfig.
class GetKubeconfigContainerV1beta1Result {
  final String kubeconfig;

  /// Creates a new [GetKubeconfigContainerV1beta1Result].
  /// [kubeconfig] Required.
  GetKubeconfigContainerV1beta1Result({
    required this.kubeconfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kubeconfig'] = kubeconfig;
    return map;
  }

  factory GetKubeconfigContainerV1beta1Result.fromMap(
      Map<String, dynamic> map) {
    return GetKubeconfigContainerV1beta1Result(
      kubeconfig: map['kubeconfig'] as String,
    );
  }
}
