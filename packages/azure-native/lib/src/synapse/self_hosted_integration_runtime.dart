// ignore_for_file: unused_element, unnecessary_cast

import 'linked_integration_runtime_key_authorization.dart';

/// Self-hosted integration runtime.
class SelfHostedIntegrationRuntime {
  /// Integration runtime description.
  final String? description;
  /// Linked integration runtime type from data factory
  final LinkedIntegrationRuntimeKeyAuthorization? linkedInfo;
  /// The type of integration runtime.
  /// Expected value is 'SelfHosted'.
  final String type;

  /// Creates a new [SelfHostedIntegrationRuntime].
  /// [description] Integration runtime description.
  /// [linkedInfo] Linked integration runtime type from data factory
  /// [type] The type of integration runtime.
  SelfHostedIntegrationRuntime({
    this.description,
    this.linkedInfo,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'linkedInfo': ?linkedInfo == null ? null : linkedInfo!.toMap(),
      'type': type,
    };
  }

  factory SelfHostedIntegrationRuntime.fromMap(Map<String, dynamic> map) {
    return SelfHostedIntegrationRuntime(
      description: map['description'] == null ? null : map['description'] as String,
      linkedInfo: map['linkedInfo'] == null ? null : LinkedIntegrationRuntimeKeyAuthorization.fromMap((map['linkedInfo'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

