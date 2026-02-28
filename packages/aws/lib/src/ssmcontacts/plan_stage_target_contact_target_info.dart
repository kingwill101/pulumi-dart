// ignore_for_file: unused_element, unnecessary_cast

class PlanStageTargetContactTargetInfo {
  /// The Amazon Resource Name (ARN) of the contact.
  final String? contactId;

  /// A Boolean value determining if the contact's acknowledgement stops the progress of stages in the plan.
  final bool isEssential;

  /// Creates a new [PlanStageTargetContactTargetInfo].
  /// [contactId] The Amazon Resource Name (ARN) of the contact.
  /// [isEssential] A Boolean value determining if the contact's acknowledgement stops the progress of stages in the plan.
  PlanStageTargetContactTargetInfo({
    this.contactId,
    required this.isEssential,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contactIdValue = contactId;
    if (contactIdValue != null) {
      map['contactId'] = contactIdValue;
    }
    map['isEssential'] = isEssential;
    return map;
  }

  factory PlanStageTargetContactTargetInfo.fromMap(Map<String, dynamic> map) {
    return PlanStageTargetContactTargetInfo(
      contactId: map['contactId'] == null ? null : map['contactId'] as String,
      isEssential: map['isEssential'] as bool,
    );
  }
}
