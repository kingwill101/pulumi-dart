// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanStageTargetContactTargetInfo {
  /// The ARN of the contact.
  final pulumi.Input<String?>? contactId;
  /// A Boolean value determining if the contact's acknowledgement stops the progress of stages in the plan.
  final pulumi.Input<bool> isEssential;

  /// Creates a new [PlanStageTargetContactTargetInfo].
  /// [contactId] The ARN of the contact.
  /// [isEssential] A Boolean value determining if the contact's acknowledgement stops the progress of stages in the plan.
  const PlanStageTargetContactTargetInfo({
    this.contactId,
    required this.isEssential,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactId': ?contactId,
      'isEssential': isEssential,
    };
  }

  factory PlanStageTargetContactTargetInfo.fromMap(Map<String, dynamic> map) {
    return PlanStageTargetContactTargetInfo(
      contactId: (() { final guardedValue = map['contactId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEssential: pulumi.Input.fromValue(map['isEssential'] as bool),
    );
  }
}
