// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getKubeconfig.
class GetKubeconfigResult {
  final String kubeconfig;

  /// Creates a new [GetKubeconfigResult].
  /// [kubeconfig] Required.
  GetKubeconfigResult({
    required this.kubeconfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kubeconfig'] = kubeconfig;
    return map;
  }

  factory GetKubeconfigResult.fromMap(Map<String, dynamic> map) {
    return GetKubeconfigResult(
      kubeconfig: map['kubeconfig'] as String,
    );
  }
}
