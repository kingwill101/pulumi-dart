// ignore_for_file: unused_element, unnecessary_cast


class GetPlanStageTargetContactTargetInfo {
  /// The Amazon Resource Name (ARN) of the contact or escalation plan.
  final String contactId;
  final bool isEssential;

  /// Creates a new [GetPlanStageTargetContactTargetInfo].
  /// [contactId] The Amazon Resource Name (ARN) of the contact or escalation plan.
  /// [isEssential] Required.
  GetPlanStageTargetContactTargetInfo({
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
      contactId: map['contactId'] as String,
      isEssential: map['isEssential'] as bool,
    );
  }
}

