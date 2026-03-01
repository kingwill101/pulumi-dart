// ignore_for_file: unused_element, unnecessary_cast

class GetControlProjectIntelligenceConfigTrialConfig {
  /// The time at which the trial expires.
  final String expireTime;

  /// Creates a new [GetControlProjectIntelligenceConfigTrialConfig].
  /// [expireTime] The time at which the trial expires.
  GetControlProjectIntelligenceConfigTrialConfig({required this.expireTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'expireTime': expireTime};
  }

  factory GetControlProjectIntelligenceConfigTrialConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetControlProjectIntelligenceConfigTrialConfig(
      expireTime: map['expireTime'] as String,
    );
  }
}
