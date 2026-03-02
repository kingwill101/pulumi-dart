// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanStageTargetContactTargetInfo {
  /// The Amazon Resource Name (ARN) of the contact.
  final pulumi.Input<String>? contactId;
  /// A Boolean value determining if the contact's acknowledgement stops the progress of stages in the plan.
  final pulumi.Input<bool> isEssential;

  /// Creates a new [PlanStageTargetContactTargetInfo].
  /// [contactId] The Amazon Resource Name (ARN) of the contact.
  /// [isEssential] A Boolean value determining if the contact's acknowledgement stops the progress of stages in the plan.
  PlanStageTargetContactTargetInfo({
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
      contactId: map['contactId'] == null ? null : (map['contactId'] as String).input(),
      isEssential: (map['isEssential'] as bool).input(),
    );
  }
}

