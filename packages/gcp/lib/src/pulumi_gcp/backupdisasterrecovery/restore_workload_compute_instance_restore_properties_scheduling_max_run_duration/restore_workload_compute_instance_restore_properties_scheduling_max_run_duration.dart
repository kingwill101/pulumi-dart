// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration {
  /// (Optional)
  final int? nanos;

  /// (Optional)
  final int? seconds;

  RestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration({
    this.nanos,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nanosValue = nanos;
    if (nanosValue != null) {
      map['nanos'] = nanosValue;
    }
    final secondsValue = seconds;
    if (secondsValue != null) {
      map['seconds'] = secondsValue;
    }
    return map;
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration(
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] == null ? null : map['seconds'] as int,
    );
  }
}
