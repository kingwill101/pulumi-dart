// ignore_for_file: unused_element, unnecessary_cast


class AutomationRuleActionFindingFieldsUpdateWorkflow {
  /// The status of the investigation into the finding. The allowed values are the following `NEW`, `NOTIFIED`, `RESOLVED` and `SUPPRESSED`.
  final String? status;

  /// Creates a new [AutomationRuleActionFindingFieldsUpdateWorkflow].
  /// [status] The status of the investigation into the finding. The allowed values are the following `NEW`, `NOTIFIED`, `RESOLVED` and `SUPPRESSED`.
  AutomationRuleActionFindingFieldsUpdateWorkflow({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory AutomationRuleActionFindingFieldsUpdateWorkflow.fromMap(Map<String, dynamic> map) {
    return AutomationRuleActionFindingFieldsUpdateWorkflow(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

