// ignore_for_file: unused_element, unnecessary_cast

class GetControlOrganizationIntelligenceConfigTrialConfig {
  /// The time at which the trial expires.
  final String expireTime;

  /// Creates a new [GetControlOrganizationIntelligenceConfigTrialConfig].
  /// [expireTime] The time at which the trial expires.
  GetControlOrganizationIntelligenceConfigTrialConfig({
    required this.expireTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expireTime'] = expireTime;
    return map;
  }

  factory GetControlOrganizationIntelligenceConfigTrialConfig.fromMap(
      Map<String, dynamic> map) {
    return GetControlOrganizationIntelligenceConfigTrialConfig(
      expireTime: map['expireTime'] as String,
    );
  }
}
