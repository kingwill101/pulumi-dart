// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesClusterServicePrincipal {
  /// The Client ID of the user-defined Managed Identity assigned to the Kubelets.
  final String clientId;

  /// Creates a new [GetKubernetesClusterServicePrincipal].
  /// [clientId] The Client ID of the user-defined Managed Identity assigned to the Kubelets.
  GetKubernetesClusterServicePrincipal({
    required this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
    };
  }

  factory GetKubernetesClusterServicePrincipal.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterServicePrincipal(
      clientId: map['clientId'] as String,
    );
  }
}

