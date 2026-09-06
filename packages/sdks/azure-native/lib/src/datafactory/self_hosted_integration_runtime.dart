// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Self-hosted integration runtime.
class SelfHostedIntegrationRuntime {
  /// Integration runtime description.
  final pulumi.Input<String?>? description;
  /// The base definition of a linked integration runtime.
  final pulumi.Input<dynamic>? linkedInfo;
  /// An alternative option to ensure interactive authoring function when your self-hosted integration runtime is unable to establish a connection with Azure Relay.
  final pulumi.Input<bool?>? selfContainedInteractiveAuthoringEnabled;
  /// The type of integration runtime.
  /// Expected value is 'SelfHosted'.
  final pulumi.Input<String> type;

  /// Creates a new [SelfHostedIntegrationRuntime].
  /// [description] Integration runtime description.
  /// [linkedInfo] The base definition of a linked integration runtime.
  /// [selfContainedInteractiveAuthoringEnabled] An alternative option to ensure interactive authoring function when your self-hosted integration runtime is unable to establish a connection with Azure Relay.
  /// [type] The type of integration runtime.
  const SelfHostedIntegrationRuntime({
    this.description,
    this.linkedInfo,
    this.selfContainedInteractiveAuthoringEnabled,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'linkedInfo': ?linkedInfo,
      'selfContainedInteractiveAuthoringEnabled': ?selfContainedInteractiveAuthoringEnabled,
      'type': type,
    };
  }

  factory SelfHostedIntegrationRuntime.fromMap(Map<String, dynamic> map) {
    return SelfHostedIntegrationRuntime(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedInfo: (() { final guardedValue = map['linkedInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      selfContainedInteractiveAuthoringEnabled: (() { final guardedValue = map['selfContainedInteractiveAuthoringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
