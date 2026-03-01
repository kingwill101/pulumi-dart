// ignore_for_file: unused_element, unnecessary_cast


class GetMongoInstancesInstanceRestoreRange {
  final String restoreBeginTime;
  final String restoreEndTime;
  final String restoreType;

  /// Creates a new [GetMongoInstancesInstanceRestoreRange].
  /// [restoreBeginTime] Required.
  /// [restoreEndTime] Required.
  /// [restoreType] Required.
  GetMongoInstancesInstanceRestoreRange({
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

  factory GetMongoInstancesInstanceRestoreRange.fromMap(Map<String, dynamic> map) {
    return GetMongoInstancesInstanceRestoreRange(
      restoreBeginTime: map['restoreBeginTime'] as String,
      restoreEndTime: map['restoreEndTime'] as String,
      restoreType: map['restoreType'] as String,
    );
  }
}

