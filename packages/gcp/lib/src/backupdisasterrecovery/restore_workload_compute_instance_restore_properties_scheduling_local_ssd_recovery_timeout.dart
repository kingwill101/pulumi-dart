// ignore_for_file: unused_element, unnecessary_cast


class RestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout {
  /// (Optional)
  final int? nanos;
  /// (Optional)
  final int? seconds;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout].
  /// [nanos] (Optional)
  /// [seconds] (Optional)
  RestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout({
    this.nanos,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nanos': ?nanos,
      'seconds': ?seconds,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout(
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] == null ? null : map['seconds'] as int,
    );
  }
}

