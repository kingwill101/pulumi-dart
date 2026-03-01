// ignore_for_file: unused_element, unnecessary_cast


class GetPlanStageTargetChannelTargetInfo {
  final String contactChannelId;
  final int retryIntervalInMinutes;

  /// Creates a new [GetPlanStageTargetChannelTargetInfo].
  /// [contactChannelId] Required.
  /// [retryIntervalInMinutes] Required.
  GetPlanStageTargetChannelTargetInfo({
    required this.contactChannelId,
    required this.retryIntervalInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactChannelId': contactChannelId,
      'retryIntervalInMinutes': retryIntervalInMinutes,
    };
  }

  factory GetPlanStageTargetChannelTargetInfo.fromMap(Map<String, dynamic> map) {
    return GetPlanStageTargetChannelTargetInfo(
      contactChannelId: map['contactChannelId'] as String,
      retryIntervalInMinutes: map['retryIntervalInMinutes'] as int,
    );
  }
}

