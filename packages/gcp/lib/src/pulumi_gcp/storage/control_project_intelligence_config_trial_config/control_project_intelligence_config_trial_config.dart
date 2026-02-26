// ignore_for_file: unused_element, unnecessary_cast

class ControlProjectIntelligenceConfigTrialConfig {
  /// (Output)
  /// The time at which the trial expires.
  final String? expireTime;

  ControlProjectIntelligenceConfigTrialConfig({
    this.expireTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expireTimeValue = expireTime;
    if (expireTimeValue != null) {
      map['expireTime'] = expireTimeValue;
    }
    return map;
  }

  factory ControlProjectIntelligenceConfigTrialConfig.fromMap(
      Map<String, dynamic> map) {
    return ControlProjectIntelligenceConfigTrialConfig(
      expireTime:
          map['expireTime'] == null ? null : map['expireTime'] as String,
    );
  }
}
