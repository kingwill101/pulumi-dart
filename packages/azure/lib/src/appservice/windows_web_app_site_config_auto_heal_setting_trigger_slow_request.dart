// ignore_for_file: unused_element, unnecessary_cast


class WindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest {
  /// The number of Slow Requests in the time `interval` to trigger this rule.
  final int count;
  /// The time interval in the form `hh:mm:ss`.
  final String interval;
  /// The threshold of time passed to qualify as a Slow Request in `hh:mm:ss`.
  final String timeTaken;

  /// Creates a new [WindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest].
  /// [count] The number of Slow Requests in the time `interval` to trigger this rule.
  /// [interval] The time interval in the form `hh:mm:ss`.
  /// [timeTaken] The threshold of time passed to qualify as a Slow Request in `hh:mm:ss`.
  WindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest({
    required this.count,
    required this.interval,
    required this.timeTaken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'interval': interval,
      'timeTaken': timeTaken,
    };
  }

  factory WindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest(
      count: map['count'] as int,
      interval: map['interval'] as String,
      timeTaken: map['timeTaken'] as String,
    );
  }
}

