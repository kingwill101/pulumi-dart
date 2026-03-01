// ignore_for_file: unused_element, unnecessary_cast


class AppLimits {
  /// The maximum number of messages that the campaign can send daily.
  final int? daily;
  /// The length of time (in seconds) that the campaign can run before it ends and message deliveries stop. This duration begins at the scheduled start time for the campaign. The minimum value is 60.
  final int? maximumDuration;
  /// The number of messages that the campaign can send per second. The minimum value is 50, and the maximum is 20000.
  final int? messagesPerSecond;
  /// The maximum total number of messages that the campaign can send.
  final int? total;

  /// Creates a new [AppLimits].
  /// [daily] The maximum number of messages that the campaign can send daily.
  /// [maximumDuration] The length of time (in seconds) that the campaign can run before it ends and message deliveries stop. This duration begins at the scheduled start time for the campaign. The minimum value is 60.
  /// [messagesPerSecond] The number of messages that the campaign can send per second. The minimum value is 50, and the maximum is 20000.
  /// [total] The maximum total number of messages that the campaign can send.
  AppLimits({
    this.daily,
    this.maximumDuration,
    this.messagesPerSecond,
    this.total,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daily': ?daily,
      'maximumDuration': ?maximumDuration,
      'messagesPerSecond': ?messagesPerSecond,
      'total': ?total,
    };
  }

  factory AppLimits.fromMap(Map<String, dynamic> map) {
    return AppLimits(
      daily: map['daily'] == null ? null : map['daily'] as int,
      maximumDuration: map['maximumDuration'] == null ? null : map['maximumDuration'] as int,
      messagesPerSecond: map['messagesPerSecond'] == null ? null : map['messagesPerSecond'] as int,
      total: map['total'] == null ? null : map['total'] as int,
    );
  }
}

