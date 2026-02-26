// ignore_for_file: unused_element, unnecessary_cast

class AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfig {
  /// Required. The DNS name suffix of the zone being peered
  /// to, e.g., "my-internal-domain.corp.".
  /// Must end with a dot.
  final String domain;

  /// Required. The VPC network name in the targetProject
  /// where the DNS zone specified by 'domain' is visible.
  final String targetNetwork;

  /// Required. The project id hosting the Cloud DNS managed
  /// zone that contains the 'domain'.
  /// The Vertex AI service Agent requires the dns.peer role
  /// on this project.
  final String targetProject;

  AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfig({
    required this.domain,
    required this.targetNetwork,
    required this.targetProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    map['targetNetwork'] = targetNetwork;
    map['targetProject'] = targetProject;
    return map;
  }

  factory AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfig.fromMap(
      Map<String, dynamic> map) {
    return AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfig(
      domain: map['domain'] as String,
      targetNetwork: map['targetNetwork'] as String,
      targetProject: map['targetProject'] as String,
    );
  }
}
