// ignore_for_file: unused_element, unnecessary_cast

class AgentPromptVariantMetadata {
  /// Key of a metadata tag for a prompt variant.
  final String key;

  /// Value of a metadata tag for a prompt variant.
  final String value;

  /// Creates a new [AgentPromptVariantMetadata].
  /// [key] Key of a metadata tag for a prompt variant.
  /// [value] Value of a metadata tag for a prompt variant.
  AgentPromptVariantMetadata({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory AgentPromptVariantMetadata.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantMetadata(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
