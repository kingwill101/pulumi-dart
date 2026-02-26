// ignore_for_file: unused_element, unnecessary_cast

class ControlOrganizationIntelligenceConfigTrialConfig {
  /// (Output)
  /// The time at which the trial expires.
  final String? expireTime;

  ControlOrganizationIntelligenceConfigTrialConfig({
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

  factory ControlOrganizationIntelligenceConfigTrialConfig.fromMap(
      Map<String, dynamic> map) {
    return ControlOrganizationIntelligenceConfigTrialConfig(
      expireTime:
          map['expireTime'] == null ? null : map['expireTime'] as String,
    );
  }
}
