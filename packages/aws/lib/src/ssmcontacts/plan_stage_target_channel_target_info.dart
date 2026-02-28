// ignore_for_file: unused_element, unnecessary_cast

class PlanStageTargetChannelTargetInfo {
  /// The Amazon Resource Name (ARN) of the contact channel.
  final String contactChannelId;

  /// The number of minutes to wait before retrying to send engagement if the engagement initially failed.
  final int? retryIntervalInMinutes;

  /// Creates a new [PlanStageTargetChannelTargetInfo].
  /// [contactChannelId] The Amazon Resource Name (ARN) of the contact channel.
  /// [retryIntervalInMinutes] The number of minutes to wait before retrying to send engagement if the engagement initially failed.
  PlanStageTargetChannelTargetInfo({
    required this.contactChannelId,
    this.retryIntervalInMinutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactChannelId'] = contactChannelId;
    final retryIntervalInMinutesValue = retryIntervalInMinutes;
    if (retryIntervalInMinutesValue != null) {
      map['retryIntervalInMinutes'] = retryIntervalInMinutesValue;
    }
    return map;
  }

  factory PlanStageTargetChannelTargetInfo.fromMap(Map<String, dynamic> map) {
    return PlanStageTargetChannelTargetInfo(
      contactChannelId: map['contactChannelId'] as String,
      retryIntervalInMinutes: map['retryIntervalInMinutes'] == null
          ? null
          : map['retryIntervalInMinutes'] as int,
    );
  }
}
