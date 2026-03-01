// ignore_for_file: unused_element, unnecessary_cast

class ControlProjectIntelligenceConfigTrialConfig {
  /// (Output)
  /// The time at which the trial expires.
  final String? expireTime;

  /// Creates a new [ControlProjectIntelligenceConfigTrialConfig].
  /// [expireTime] (Output)
  ControlProjectIntelligenceConfigTrialConfig({this.expireTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'expireTime': ?expireTime};
  }

  factory ControlProjectIntelligenceConfigTrialConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ControlProjectIntelligenceConfigTrialConfig(
      expireTime: map['expireTime'] == null
          ? null
          : map['expireTime'] as String,
    );
  }
}
