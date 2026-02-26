// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getKubeconfig.
class GetKubeconfigResult2 {
  final String kubeconfig;

  GetKubeconfigResult2({
    required this.kubeconfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kubeconfig'] = kubeconfig;
    return map;
  }

  factory GetKubeconfigResult2.fromMap(Map<String, dynamic> map) {
    return GetKubeconfigResult2(
      kubeconfig: map['kubeconfig'] as String,
    );
  }
}
