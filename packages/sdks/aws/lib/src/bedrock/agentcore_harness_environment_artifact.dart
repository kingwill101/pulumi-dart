// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_environment_artifact_container_configuration.dart';

class AgentcoreHarnessEnvironmentArtifact {
  /// Container configuration. See `containerConfiguration` Block below.
  final pulumi.Input<AgentcoreHarnessEnvironmentArtifactContainerConfiguration?>? containerConfiguration;

  /// Creates a new [AgentcoreHarnessEnvironmentArtifact].
  /// [containerConfiguration] Container configuration. See `containerConfiguration` Block below.
  const AgentcoreHarnessEnvironmentArtifact({
    this.containerConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessEnvironmentArtifactContainerConfiguration, Map<String, dynamic>>(containerConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentcoreHarnessEnvironmentArtifact.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessEnvironmentArtifact(
      containerConfiguration: (() { final guardedValue = map['containerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessEnvironmentArtifactContainerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
