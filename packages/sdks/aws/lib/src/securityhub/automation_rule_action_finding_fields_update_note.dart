// ignore_for_file: unused_element, unnecessary_cast


class AutomationRuleActionFindingFieldsUpdateNote {
  /// The updated note text.
  final String text;
  /// The principal that updated the note.
  final String updatedBy;

  /// Creates a new [AutomationRuleActionFindingFieldsUpdateNote].
  /// [text] The updated note text.
  /// [updatedBy] The principal that updated the note.
  AutomationRuleActionFindingFieldsUpdateNote({
    required this.text,
    required this.updatedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'updatedBy': updatedBy,
    };
  }

  factory AutomationRuleActionFindingFieldsUpdateNote.fromMap(Map<String, dynamic> map) {
    return AutomationRuleActionFindingFieldsUpdateNote(
      text: map['text'] as String,
      updatedBy: map['updatedBy'] as String,
    );
  }
}

