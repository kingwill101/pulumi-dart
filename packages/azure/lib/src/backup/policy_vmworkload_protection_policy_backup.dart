// ignore_for_file: unused_element, unnecessary_cast


class PolicyVMWorkloadProtectionPolicyBackup {
  /// The backup frequency for the VM Workload Backup Policy. Possible values are `Daily` and `Weekly`.
  final String? frequency;
  /// The backup frequency in minutes for the VM Workload Backup Policy. Possible values are `15`, `30`, `60`, `120`, `240`, `480`, `720` and `1440`.
  final int? frequencyInMinutes;
  /// The time of day to perform the backup in 24hour format.
  final String? time;
  /// The days of the week to perform backups on. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`. This is used when `frequency` is `Weekly`.
  final List<String>? weekdays;

  /// Creates a new [PolicyVMWorkloadProtectionPolicyBackup].
  /// [frequency] The backup frequency for the VM Workload Backup Policy. Possible values are `Daily` and `Weekly`.
  /// [frequencyInMinutes] The backup frequency in minutes for the VM Workload Backup Policy. Possible values are `15`, `30`, `60`, `120`, `240`, `480`, `720` and `1440`.
  /// [time] The time of day to perform the backup in 24hour format.
  /// [weekdays] The days of the week to perform backups on. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`. This is used when `frequency` is `Weekly`.
  PolicyVMWorkloadProtectionPolicyBackup({
    this.frequency,
    this.frequencyInMinutes,
    this.time,
    this.weekdays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'frequencyInMinutes': ?frequencyInMinutes,
      'time': ?time,
      'weekdays': ?weekdays,
    };
  }

  factory PolicyVMWorkloadProtectionPolicyBackup.fromMap(Map<String, dynamic> map) {
    return PolicyVMWorkloadProtectionPolicyBackup(
      frequency: map['frequency'] == null ? null : map['frequency'] as String,
      frequencyInMinutes: map['frequencyInMinutes'] == null ? null : map['frequencyInMinutes'] as int,
      time: map['time'] == null ? null : map['time'] as String,
      weekdays: map['weekdays'] == null ? null : (map['weekdays'] as List).cast<String>(),
    );
  }
}

