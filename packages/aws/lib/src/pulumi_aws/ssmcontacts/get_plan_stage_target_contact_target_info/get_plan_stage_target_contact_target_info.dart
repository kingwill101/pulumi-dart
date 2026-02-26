// ignore_for_file: unused_element, unnecessary_cast

class GetPlanStageTargetContactTargetInfo {
  /// The Amazon Resource Name (ARN) of the contact or escalation plan.
  final String contactId;
  final bool isEssential;

  GetPlanStageTargetContactTargetInfo({
    required this.contactId,
    required this.isEssential,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactId'] = contactId;
    map['isEssential'] = isEssential;
    return map;
  }

  factory GetPlanStageTargetContactTargetInfo.fromMap(
      Map<String, dynamic> map) {
    return GetPlanStageTargetContactTargetInfo(
      contactId: map['contactId'] as String,
      isEssential: map['isEssential'] as bool,
    );
  }
}
