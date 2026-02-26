// ignore_for_file: unused_element, unnecessary_cast

/// A scope specifier for `CheckSet` objects.
class Scope {
  /// Optional. Matches all Kubernetes service accounts in the provided namespace, unless a more specific `kubernetes_service_account` scope already matched.
  final String? kubernetesNamespace;

  /// Optional. Matches a single Kubernetes service account, e.g. `my-namespace:my-service-account`. `kubernetes_service_account` scope is always more specific than `kubernetes_namespace` scope for the same namespace.
  final String? kubernetesServiceAccount;

  Scope({
    this.kubernetesNamespace,
    this.kubernetesServiceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kubernetesNamespaceValue = kubernetesNamespace;
    if (kubernetesNamespaceValue != null) {
      map['kubernetesNamespace'] = kubernetesNamespaceValue;
    }
    final kubernetesServiceAccountValue = kubernetesServiceAccount;
    if (kubernetesServiceAccountValue != null) {
      map['kubernetesServiceAccount'] = kubernetesServiceAccountValue;
    }
    return map;
  }

  factory Scope.fromMap(Map<String, dynamic> map) {
    return Scope(
      kubernetesNamespace: map['kubernetesNamespace'] == null
          ? null
          : map['kubernetesNamespace'] as String,
      kubernetesServiceAccount: map['kubernetesServiceAccount'] == null
          ? null
          : map['kubernetesServiceAccount'] as String,
    );
  }
}
