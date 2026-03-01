// ignore_for_file: unused_element, unnecessary_cast

import 'attached_cluster_proxy_config_kubernetes_secret.dart';

class AttachedClusterProxyConfig {
  /// The Kubernetes Secret resource that contains the HTTP(S) proxy configuration.
  /// Structure is documented below.
  final AttachedClusterProxyConfigKubernetesSecret? kubernetesSecret;

  /// Creates a new [AttachedClusterProxyConfig].
  /// [kubernetesSecret] The Kubernetes Secret resource that contains the HTTP(S) proxy configuration.
  AttachedClusterProxyConfig({
    this.kubernetesSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesSecret': ?kubernetesSecret == null ? null : kubernetesSecret!.toMap(),
    };
  }

  factory AttachedClusterProxyConfig.fromMap(Map<String, dynamic> map) {
    return AttachedClusterProxyConfig(
      kubernetesSecret: map['kubernetesSecret'] == null ? null : AttachedClusterProxyConfigKubernetesSecret.fromMap((map['kubernetesSecret'] as Map).cast<String, dynamic>()),
    );
  }
}

