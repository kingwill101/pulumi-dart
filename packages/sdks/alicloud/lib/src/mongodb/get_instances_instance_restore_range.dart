// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstanceRestoreRange {
  /// The beginning of the recoverable time range.
  final pulumi.Input<String> restoreBeginTime;

  /// The end of the recoverable time range.
  final pulumi.Input<String> restoreEndTime;

  /// The restoration method.
  final pulumi.Input<String> restoreType;

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
      restoreBeginTime: pulumi.Input.fromValue(
        map['restoreBeginTime'] as String,
      ),
      restoreEndTime: pulumi.Input.fromValue(map['restoreEndTime'] as String),
      restoreType: pulumi.Input.fromValue(map['restoreType'] as String),
    );
  }
}
