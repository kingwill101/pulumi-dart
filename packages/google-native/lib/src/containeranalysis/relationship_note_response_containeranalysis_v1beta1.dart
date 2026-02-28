// ignore_for_file: unused_element, unnecessary_cast

/// RelationshipNote represents an SPDX Relationship section: https://spdx.github.io/spdx-spec/7-relationships-between-SPDX-elements/
class RelationshipNoteResponseContaineranalysisV1beta1 {
  /// The type of relationship between the source and target SPDX elements
  final String type;

  /// Creates a new [RelationshipNoteResponseContaineranalysisV1beta1].
  /// [type] The type of relationship between the source and target SPDX elements
  RelationshipNoteResponseContaineranalysisV1beta1({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory RelationshipNoteResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return RelationshipNoteResponseContaineranalysisV1beta1(
      type: map['type'] as String,
    );
  }
}
