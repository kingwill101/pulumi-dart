// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessEnvironmentArtifactContainerConfiguration {
  /// URI of the container image.
  final pulumi.Input<String> containerUri;

  /// Creates a new [AgentcoreHarnessEnvironmentArtifactContainerConfiguration].
  /// [containerUri] URI of the container image.
  const AgentcoreHarnessEnvironmentArtifactContainerConfiguration({
    required this.containerUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerUri': containerUri,
    };
  }

  factory AgentcoreHarnessEnvironmentArtifactContainerConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessEnvironmentArtifactContainerConfiguration(
      containerUri: pulumi.Input.fromValue(map['containerUri'] as String),
    );
  }
}
