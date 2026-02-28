// ignore_for_file: unused_element, unnecessary_cast


/// A scope specifier for `CheckSet` objects.
class ScopeResponse {
  /// Optional. Matches all Kubernetes service accounts in the provided namespace, unless a more specific `kubernetes_service_account` scope already matched.
  final String kubernetesNamespace;
  /// Optional. Matches a single Kubernetes service account, e.g. `my-namespace:my-service-account`. `kubernetes_service_account` scope is always more specific than `kubernetes_namespace` scope for the same namespace.
  final String kubernetesServiceAccount;

  /// Creates a new [ScopeResponse].
  /// [kubernetesNamespace] Optional. Matches all Kubernetes service accounts in the provided namespace, unless a more specific `kubernetes_service_account` scope already matched.
  /// [kubernetesServiceAccount] Optional. Matches a single Kubernetes service account, e.g. `my-namespace:my-service-account`. `kubernetes_service_account` scope is always more specific than `kubernetes_namespace` scope for the same namespace.
  ScopeResponse({
    required this.kubernetesNamespace,
    required this.kubernetesServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesNamespace': kubernetesNamespace,
      'kubernetesServiceAccount': kubernetesServiceAccount,
    };
  }

  factory ScopeResponse.fromMap(Map<String, dynamic> map) {
    return ScopeResponse(
      kubernetesNamespace: map['kubernetesNamespace'] as String,
      kubernetesServiceAccount: map['kubernetesServiceAccount'] as String,
    );
  }
}

