// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceAgentConfig resources.
class ServiceAgentConfigState {
  /// Whether the cloud monitoring plug-in is automatically installed on the newly purchased ECS host. Value:
  /// - true (default): The cloud monitoring plug-in is automatically installed on the newly purchased ECS host.
  /// - false: The cloud monitoring plug-in is not automatically installed on the newly purchased ECS host.
  final pulumi.Input<bool>? enableInstallAgentNewEcs;

  /// Creates a new [ServiceAgentConfigState].
  /// [enableInstallAgentNewEcs] Whether the cloud monitoring plug-in is automatically installed on the newly purchased ECS host. Value:
  ServiceAgentConfigState({
    pulumi.Output<bool>? enableInstallAgentNewEcs,
  }) :
      enableInstallAgentNewEcs = pulumi.Input.asOptionalInput<bool>(enableInstallAgentNewEcs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInstallAgentNewEcs': ?enableInstallAgentNewEcs,
    };
  }

  factory ServiceAgentConfigState.fromMap(Map<String, dynamic> map) {
    return ServiceAgentConfigState(
      enableInstallAgentNewEcs: map['enableInstallAgentNewEcs'] == null ? null : pulumi.Output.create<bool>(map['enableInstallAgentNewEcs'] as bool),
    );
  }
}

