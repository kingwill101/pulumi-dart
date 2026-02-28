// ignore_for_file: unused_element, unnecessary_cast

import 'relationship_note_type_containeranalysis_v1beta1.dart';

/// RelationshipNote represents an SPDX Relationship section: https://spdx.github.io/spdx-spec/7-relationships-between-SPDX-elements/
class RelationshipNoteContaineranalysisV1beta1 {
  /// The type of relationship between the source and target SPDX elements
  final RelationshipNoteTypeContaineranalysisV1beta1? type;

  /// Creates a new [RelationshipNoteContaineranalysisV1beta1].
  /// [type] The type of relationship between the source and target SPDX elements
  RelationshipNoteContaineranalysisV1beta1({
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory RelationshipNoteContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return RelationshipNoteContaineranalysisV1beta1(
      type: map['type'] == null
          ? null
          : RelationshipNoteTypeContaineranalysisV1beta1.fromValue(
              map['type'] as String),
    );
  }
}
