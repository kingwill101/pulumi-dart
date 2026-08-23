// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleActionFindingFieldsUpdateWorkflow {
  /// The status of the investigation into the finding. The allowed values are the following `NEW`, `NOTIFIED`, `RESOLVED` and `SUPPRESSED`.
  final pulumi.Input<String>? status;

  /// Creates a new [AutomationRuleActionFindingFieldsUpdateWorkflow].
  /// [status] The status of the investigation into the finding. The allowed values are the following `NEW`, `NOTIFIED`, `RESOLVED` and `SUPPRESSED`.
  const AutomationRuleActionFindingFieldsUpdateWorkflow({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory AutomationRuleActionFindingFieldsUpdateWorkflow.fromMap(Map<String, dynamic> map) {
    return AutomationRuleActionFindingFieldsUpdateWorkflow(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
