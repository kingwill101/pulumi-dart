// ignore_for_file: unused_element, unnecessary_cast


class PolicyVMWorkloadProtectionPolicyRetentionYearly {
  /// The number of yearly backups to keep. Possible values are between `1` and `99`
  final int count;
  /// The retention schedule format type for yearly retention policy. Possible values are `Daily` and `Weekly`.
  final String formatType;
  /// The monthday backups to retain. Possible values are between `0` and `28`.
  final List<int>? monthdays;
  /// The months of the year to retain backups of. Possible values are `January`, `February`, `March`, `April`, `May`, `June`, `July`, `August`, `September`, `October`, `November` and `December`.
  final List<String> months;
  /// The weekday backups to retain. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`.
  final List<String>? weekdays;
  /// The weeks of the month to retain backups of. Possible values are `First`, `Second`, `Third`, `Fourth`, `Last`.
  final List<String>? weeks;

  /// Creates a new [PolicyVMWorkloadProtectionPolicyRetentionYearly].
  /// [count] The number of yearly backups to keep. Possible values are between `1` and `99`
  /// [formatType] The retention schedule format type for yearly retention policy. Possible values are `Daily` and `Weekly`.
  /// [monthdays] The monthday backups to retain. Possible values are between `0` and `28`.
  /// [months] The months of the year to retain backups of. Possible values are `January`, `February`, `March`, `April`, `May`, `June`, `July`, `August`, `September`, `October`, `November` and `December`.
  /// [weekdays] The weekday backups to retain. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`.
  /// [weeks] The weeks of the month to retain backups of. Possible values are `First`, `Second`, `Third`, `Fourth`, `Last`.
  PolicyVMWorkloadProtectionPolicyRetentionYearly({
    required this.count,
    required this.formatType,
    this.monthdays,
    required this.months,
    this.weekdays,
    this.weeks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'formatType': formatType,
      'monthdays': ?monthdays,
      'months': months,
      'weekdays': ?weekdays,
      'weeks': ?weeks,
    };
  }

  factory PolicyVMWorkloadProtectionPolicyRetentionYearly.fromMap(Map<String, dynamic> map) {
    return PolicyVMWorkloadProtectionPolicyRetentionYearly(
      count: map['count'] as int,
      formatType: map['formatType'] as String,
      monthdays: map['monthdays'] == null ? null : (map['monthdays'] as List).cast<int>(),
      months: (map['months'] as List).cast<String>(),
      weekdays: map['weekdays'] == null ? null : (map['weekdays'] as List).cast<String>(),
      weeks: map['weeks'] == null ? null : (map['weeks'] as List).cast<String>(),
    );
  }
}

