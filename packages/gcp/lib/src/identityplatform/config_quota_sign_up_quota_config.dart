// ignore_for_file: unused_element, unnecessary_cast

class ConfigQuotaSignUpQuotaConfig {
  /// A sign up APIs quota that customers can override temporarily. Value can be in between 1 and 1000.
  final int? quota;

  /// How long this quota will be active for. It is measurred in seconds, e.g., Example: "9.615s".
  final String? quotaDuration;

  /// When this quota will take affect.
  final String? startTime;

  /// Creates a new [ConfigQuotaSignUpQuotaConfig].
  /// [quota] A sign up APIs quota that customers can override temporarily. Value can be in between 1 and 1000.
  /// [quotaDuration] How long this quota will be active for. It is measurred in seconds, e.g., Example: "9.615s".
  /// [startTime] When this quota will take affect.
  ConfigQuotaSignUpQuotaConfig({
    this.quota,
    this.quotaDuration,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final quotaValue = quota;
    if (quotaValue != null) {
      map['quota'] = quotaValue;
    }
    final quotaDurationValue = quotaDuration;
    if (quotaDurationValue != null) {
      map['quotaDuration'] = quotaDurationValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    return map;
  }

  factory ConfigQuotaSignUpQuotaConfig.fromMap(Map<String, dynamic> map) {
    return ConfigQuotaSignUpQuotaConfig(
      quota: map['quota'] == null ? null : map['quota'] as int,
      quotaDuration:
          map['quotaDuration'] == null ? null : map['quotaDuration'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
