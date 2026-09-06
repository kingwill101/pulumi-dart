// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Solution Template Properties
class SolutionTemplateProperties {
  /// List of capabilities
  final pulumi.Input<List<String>> capabilities;
  /// Description of Solution template
  final pulumi.Input<String> description;
  /// Flag to enable external validation
  final pulumi.Input<bool?>? enableExternalValidation;
  /// State of resource
  final pulumi.Input<dynamic>? state;

  /// Creates a new [SolutionTemplateProperties].
  /// [capabilities] List of capabilities
  /// [description] Description of Solution template
  /// [enableExternalValidation] Flag to enable external validation
  /// [state] State of resource
  const SolutionTemplateProperties({
    required this.capabilities,
    required this.description,
    this.enableExternalValidation,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': capabilities,
      'description': description,
      'enableExternalValidation': ?enableExternalValidation,
      'state': ?state,
    };
  }

  factory SolutionTemplateProperties.fromMap(Map<String, dynamic> map) {
    return SolutionTemplateProperties(
      capabilities: pulumi.Input.fromValue((map['capabilities'] as List).cast<String>()),
      description: pulumi.Input.fromValue(map['description'] as String),
      enableExternalValidation: (() { final guardedValue = map['enableExternalValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
