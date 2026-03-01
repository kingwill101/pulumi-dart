// ignore_for_file: unused_element, unnecessary_cast


class PolicyVMWorkloadSettings {
  /// The compression setting for the VM Workload Backup Policy. Defaults to `false`.
  final bool? compressionEnabled;
  /// The timezone for the VM Workload Backup Policy. [The possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
  final String timeZone;

  /// Creates a new [PolicyVMWorkloadSettings].
  /// [compressionEnabled] The compression setting for the VM Workload Backup Policy. Defaults to `false`.
  /// [timeZone] The timezone for the VM Workload Backup Policy. [The possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
  PolicyVMWorkloadSettings({
    this.compressionEnabled,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionEnabled': ?compressionEnabled,
      'timeZone': timeZone,
    };
  }

  factory PolicyVMWorkloadSettings.fromMap(Map<String, dynamic> map) {
    return PolicyVMWorkloadSettings(
      compressionEnabled: map['compressionEnabled'] == null ? null : map['compressionEnabled'] as bool,
      timeZone: map['timeZone'] as String,
    );
  }
}

