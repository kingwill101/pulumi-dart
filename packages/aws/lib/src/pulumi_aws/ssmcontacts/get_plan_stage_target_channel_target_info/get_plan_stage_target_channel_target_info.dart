// ignore_for_file: unused_element, unnecessary_cast

class GetPlanStageTargetChannelTargetInfo {
  final String contactChannelId;
  final int retryIntervalInMinutes;

  GetPlanStageTargetChannelTargetInfo({
    required this.contactChannelId,
    required this.retryIntervalInMinutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactChannelId'] = contactChannelId;
    map['retryIntervalInMinutes'] = retryIntervalInMinutes;
    return map;
  }

  factory GetPlanStageTargetChannelTargetInfo.fromMap(
      Map<String, dynamic> map) {
    return GetPlanStageTargetChannelTargetInfo(
      contactChannelId: map['contactChannelId'] as String,
      retryIntervalInMinutes: map['retryIntervalInMinutes'] as int,
    );
  }
}
