// ignore_for_file: unused_element, unnecessary_cast

class CxPlaybookInstructionStep {
  /// Sub-processing needed to execute the current step.
  /// This field uses JSON data as a string. The value provided must be a valid JSON representation documented in [Step](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.playbooks#step).
  final String? steps;

  /// Step instruction in text format.
  final String? text;

  /// Creates a new [CxPlaybookInstructionStep].
  /// [steps] Sub-processing needed to execute the current step.
  /// [text] Step instruction in text format.
  CxPlaybookInstructionStep({
    this.steps,
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stepsValue = steps;
    if (stepsValue != null) {
      map['steps'] = stepsValue;
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    return map;
  }

  factory CxPlaybookInstructionStep.fromMap(Map<String, dynamic> map) {
    return CxPlaybookInstructionStep(
      steps: map['steps'] == null ? null : map['steps'] as String,
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
