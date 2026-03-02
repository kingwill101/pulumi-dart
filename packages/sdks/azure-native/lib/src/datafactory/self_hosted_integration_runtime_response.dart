// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_integration_runtime_key_authorization_response.dart';

/// Self-hosted integration runtime.
class SelfHostedIntegrationRuntimeResponse {
  /// Integration runtime description.
  final pulumi.Input<String>? description;
  /// The base definition of a linked integration runtime.
  final pulumi.Input<LinkedIntegrationRuntimeKeyAuthorizationResponse>? linkedInfo;
  /// An alternative option to ensure interactive authoring function when your self-hosted integration runtime is unable to establish a connection with Azure Relay.
  final pulumi.Input<bool>? selfContainedInteractiveAuthoringEnabled;
  /// The type of integration runtime.
  /// Expected value is 'SelfHosted'.
  final pulumi.Input<String> type;

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
      'linkedInfo': ?pulumi.Input.mapOptionalInputValue<LinkedIntegrationRuntimeKeyAuthorizationResponse, Map<String, dynamic>>(linkedInfo, (value) => value.toMap()),
      'selfContainedInteractiveAuthoringEnabled': ?selfContainedInteractiveAuthoringEnabled,
      'type': type,
    };
  }

  factory SelfHostedIntegrationRuntimeResponse.fromMap(Map<String, dynamic> map) {
    return SelfHostedIntegrationRuntimeResponse(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      linkedInfo: map['linkedInfo'] == null ? null : (LinkedIntegrationRuntimeKeyAuthorizationResponse.fromMap((map['linkedInfo']! as Map).cast<String, dynamic>())).input(),
      selfContainedInteractiveAuthoringEnabled: map['selfContainedInteractiveAuthoringEnabled'] == null ? null : (map['selfContainedInteractiveAuthoringEnabled']! as bool).input(),
      type: (map['type'] as String).input(),
    );
  }
}

