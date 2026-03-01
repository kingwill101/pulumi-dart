// ignore_for_file: unused_element, unnecessary_cast


class GetAgentExtensionsAllowList {
  /// Publisher of the extension.
  final String publisher;
  /// The identity type.
  final String type;

  /// Creates a new [GetAgentExtensionsAllowList].
  /// [publisher] Publisher of the extension.
  /// [type] The identity type.
  GetAgentExtensionsAllowList({
    required this.publisher,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publisher': publisher,
      'type': type,
    };
  }

  factory GetAgentExtensionsAllowList.fromMap(Map<String, dynamic> map) {
    return GetAgentExtensionsAllowList(
      publisher: map['publisher'] as String,
      type: map['type'] as String,
    );
  }
}

