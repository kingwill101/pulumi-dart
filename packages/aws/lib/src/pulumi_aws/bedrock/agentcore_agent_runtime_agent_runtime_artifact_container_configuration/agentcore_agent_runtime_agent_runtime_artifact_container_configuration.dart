// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfiguration {
  /// URI of the container image in Amazon ECR.
  final String containerUri;

  AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfiguration({
    required this.containerUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerUri'] = containerUri;
    return map;
  }

  factory AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeAgentRuntimeArtifactContainerConfiguration(
      containerUri: map['containerUri'] as String,
    );
  }
}
