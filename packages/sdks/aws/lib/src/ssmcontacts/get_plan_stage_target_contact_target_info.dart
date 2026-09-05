// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPlanStageTargetContactTargetInfo {
  /// ARN of the contact or escalation plan.
  final pulumi.Input<String> contactId;
  final pulumi.Input<bool> isEssential;

  /// Creates a new [GetPlanStageTargetContactTargetInfo].
  /// [contactId] ARN of the contact or escalation plan.
  /// [isEssential] Required.
  const GetPlanStageTargetContactTargetInfo({
    required this.contactId,
    required this.isEssential,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactId': contactId,
      'isEssential': isEssential,
    };
  }

  factory GetPlanStageTargetContactTargetInfo.fromMap(Map<String, dynamic> map) {
    return GetPlanStageTargetContactTargetInfo(
      contactId: pulumi.Input.fromValue(map['contactId'] as String),
      isEssential: pulumi.Input.fromValue(map['isEssential'] as bool),
    );
  }
}
