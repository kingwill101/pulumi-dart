// ignore_for_file: unused_element, unnecessary_cast

class GetControlFolderIntelligenceConfigTrialConfig {
  /// The time at which the trial expires.
  final String expireTime;

  /// Creates a new [GetControlFolderIntelligenceConfigTrialConfig].
  /// [expireTime] The time at which the trial expires.
  GetControlFolderIntelligenceConfigTrialConfig({
    required this.expireTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expireTime'] = expireTime;
    return map;
  }

  factory GetControlFolderIntelligenceConfigTrialConfig.fromMap(
      Map<String, dynamic> map) {
    return GetControlFolderIntelligenceConfigTrialConfig(
      expireTime: map['expireTime'] as String,
    );
  }
}
