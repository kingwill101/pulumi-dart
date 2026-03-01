// ignore_for_file: unused_element, unnecessary_cast


class GetAgentExtensionsBlockList {
  /// Publisher of the extension.
  final String publisher;
  /// The identity type.
  final String type;

  /// Creates a new [GetAgentExtensionsBlockList].
  /// [publisher] Publisher of the extension.
  /// [type] The identity type.
  GetAgentExtensionsBlockList({
    required this.publisher,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publisher': publisher,
      'type': type,
    };
  }

  factory GetAgentExtensionsBlockList.fromMap(Map<String, dynamic> map) {
    return GetAgentExtensionsBlockList(
      publisher: map['publisher'] as String,
      type: map['type'] as String,
    );
  }
}

