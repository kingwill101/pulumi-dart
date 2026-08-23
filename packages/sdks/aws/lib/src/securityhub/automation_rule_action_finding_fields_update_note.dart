// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleActionFindingFieldsUpdateNote {
  /// The updated note text.
  final pulumi.Input<String> text;
  /// The principal that updated the note.
  final pulumi.Input<String> updatedBy;

  /// Creates a new [AutomationRuleActionFindingFieldsUpdateNote].
  /// [text] The updated note text.
  /// [updatedBy] The principal that updated the note.
  const AutomationRuleActionFindingFieldsUpdateNote({
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
      text: pulumi.Input.fromValue(map['text'] as String),
      updatedBy: pulumi.Input.fromValue(map['updatedBy'] as String),
    );
  }
}
