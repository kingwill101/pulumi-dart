// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentPromptVariantMetadata {
  /// Key of a metadata tag for a prompt variant.
  final pulumi.Input<String> key;
  /// Value of a metadata tag for a prompt variant.
  final pulumi.Input<String> value;

  /// Creates a new [AgentPromptVariantMetadata].
  /// [key] Key of a metadata tag for a prompt variant.
  /// [value] Value of a metadata tag for a prompt variant.
  const AgentPromptVariantMetadata({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory AgentPromptVariantMetadata.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantMetadata(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
