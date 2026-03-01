// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterServicePrincipal {
  /// The Client ID for the Service Principal.
  final String clientId;
  /// The Client Secret for the Service Principal.
  final String clientSecret;

  /// Creates a new [KubernetesClusterServicePrincipal].
  /// [clientId] The Client ID for the Service Principal.
  /// [clientSecret] The Client Secret for the Service Principal.
  KubernetesClusterServicePrincipal({
    required this.clientId,
    required this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': clientSecret,
    };
  }

  factory KubernetesClusterServicePrincipal.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterServicePrincipal(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
    );
  }
}

