// ignore_for_file: unused_element, unnecessary_cast

import 'linked_integration_runtime_key_authorization_response.dart';

/// Self-hosted integration runtime.
class SelfHostedIntegrationRuntimeResponse {
  /// Integration runtime description.
  final String? description;
  /// The base definition of a linked integration runtime.
  final LinkedIntegrationRuntimeKeyAuthorizationResponse? linkedInfo;
  /// An alternative option to ensure interactive authoring function when your self-hosted integration runtime is unable to establish a connection with Azure Relay.
  final bool? selfContainedInteractiveAuthoringEnabled;
  /// The type of integration runtime.
  /// Expected value is 'SelfHosted'.
  final String type;

  /// Creates a new [SelfHostedIntegrationRuntimeResponse].
  /// [description] Integration runtime description.
  /// [linkedInfo] The base definition of a linked integration runtime.
  /// [selfContainedInteractiveAuthoringEnabled] An alternative option to ensure interactive authoring function when your self-hosted integration runtime is unable to establish a connection with Azure Relay.
  /// [type] The type of integration runtime.
  SelfHostedIntegrationRuntimeResponse({
    this.description,
    this.linkedInfo,
    this.selfContainedInteractiveAuthoringEnabled,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'linkedInfo': ?linkedInfo == null ? null : linkedInfo!.toMap(),
      'selfContainedInteractiveAuthoringEnabled': ?selfContainedInteractiveAuthoringEnabled,
      'type': type,
    };
  }

  factory SelfHostedIntegrationRuntimeResponse.fromMap(Map<String, dynamic> map) {
    return SelfHostedIntegrationRuntimeResponse(
      description: map['description'] == null ? null : map['description'] as String,
      linkedInfo: map['linkedInfo'] == null ? null : LinkedIntegrationRuntimeKeyAuthorizationResponse.fromMap((map['linkedInfo'] as Map).cast<String, dynamic>()),
      selfContainedInteractiveAuthoringEnabled: map['selfContainedInteractiveAuthoringEnabled'] == null ? null : map['selfContainedInteractiveAuthoringEnabled'] as bool,
      type: map['type'] as String,
    );
  }
}

