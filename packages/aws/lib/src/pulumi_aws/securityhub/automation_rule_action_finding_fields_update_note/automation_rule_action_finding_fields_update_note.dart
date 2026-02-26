// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleActionFindingFieldsUpdateNote {
  /// The updated note text.
  final String text;

  /// The principal that updated the note.
  final String updatedBy;

  AutomationRuleActionFindingFieldsUpdateNote({
    required this.text,
    required this.updatedBy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['updatedBy'] = updatedBy;
    return map;
  }

  factory AutomationRuleActionFindingFieldsUpdateNote.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleActionFindingFieldsUpdateNote(
      text: map['text'] as String,
      updatedBy: map['updatedBy'] as String,
    );
  }
}
