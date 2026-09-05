// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleV2ActionFindingFieldsUpdate {
  /// A comment for the finding.
  final pulumi.Input<String?>? comment;
  /// The severity ID to assign.
  final pulumi.Input<int?>? severityId;
  /// The status ID to assign.
  final pulumi.Input<int?>? statusId;

  /// Creates a new [AutomationRuleV2ActionFindingFieldsUpdate].
  /// [comment] A comment for the finding.
  /// [severityId] The severity ID to assign.
  /// [statusId] The status ID to assign.
  const AutomationRuleV2ActionFindingFieldsUpdate({
    this.comment,
    this.severityId,
    this.statusId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'severityId': ?severityId,
      'statusId': ?statusId,
    };
  }

  factory AutomationRuleV2ActionFindingFieldsUpdate.fromMap(Map<String, dynamic> map) {
    return AutomationRuleV2ActionFindingFieldsUpdate(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severityId: (() { final guardedValue = map['severityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      statusId: (() { final guardedValue = map['statusId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
