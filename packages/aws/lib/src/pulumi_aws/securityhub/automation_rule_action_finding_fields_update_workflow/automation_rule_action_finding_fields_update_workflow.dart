// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleActionFindingFieldsUpdateWorkflow {
  /// The status of the investigation into the finding. The allowed values are the following `NEW`, `NOTIFIED`, `RESOLVED` and `SUPPRESSED`.
  final String? status;

  AutomationRuleActionFindingFieldsUpdateWorkflow({
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory AutomationRuleActionFindingFieldsUpdateWorkflow.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleActionFindingFieldsUpdateWorkflow(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
