// ignore_for_file: unused_element, unnecessary_cast

import 'relationship_note_type2.dart';

/// RelationshipNote represents an SPDX Relationship section: https://spdx.github.io/spdx-spec/7-relationships-between-SPDX-elements/
class RelationshipNote2 {
  /// The type of relationship between the source and target SPDX elements
  final RelationshipNoteType2? type;

  RelationshipNote2({
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

  factory RelationshipNote2.fromMap(Map<String, dynamic> map) {
    return RelationshipNote2(
      type: map['type'] == null
          ? null
          : RelationshipNoteType2.fromValue(map['type'] as String),
    );
  }
}
