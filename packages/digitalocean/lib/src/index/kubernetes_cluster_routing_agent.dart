// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterRoutingAgent {
  /// Boolean flag whether the routing-agent should be enabled or not.
  final bool enabled;

  /// Creates a new [KubernetesClusterRoutingAgent].
  /// [enabled] Boolean flag whether the routing-agent should be enabled or not.
  KubernetesClusterRoutingAgent({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory KubernetesClusterRoutingAgent.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterRoutingAgent(
      enabled: map['enabled'] as bool,
    );
  }
}

