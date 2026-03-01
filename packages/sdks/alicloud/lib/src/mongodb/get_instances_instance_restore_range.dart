// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstanceRestoreRange {
  /// The beginning of the recoverable time range.
  final String restoreBeginTime;
  /// The end of the recoverable time range.
  final String restoreEndTime;
  /// The restoration method.
  final String restoreType;

  /// Creates a new [GetInstancesInstanceRestoreRange].
  /// [restoreBeginTime] The beginning of the recoverable time range.
  /// [restoreEndTime] The end of the recoverable time range.
  /// [restoreType] The restoration method.
  GetInstancesInstanceRestoreRange({
    required this.restoreBeginTime,
    required this.restoreEndTime,
    required this.restoreType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restoreBeginTime': restoreBeginTime,
      'restoreEndTime': restoreEndTime,
      'restoreType': restoreType,
    };
  }

  factory GetInstancesInstanceRestoreRange.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceRestoreRange(
      restoreBeginTime: map['restoreBeginTime'] as String,
      restoreEndTime: map['restoreEndTime'] as String,
      restoreType: map['restoreType'] as String,
    );
  }
}

