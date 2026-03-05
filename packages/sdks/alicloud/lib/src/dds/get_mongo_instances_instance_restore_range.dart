// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMongoInstancesInstanceRestoreRange {
  final pulumi.Input<String> restoreBeginTime;
  final pulumi.Input<String> restoreEndTime;
  final pulumi.Input<String> restoreType;

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
      restoreBeginTime: pulumi.Input.fromValue(map['restoreBeginTime'] as String),
      restoreEndTime: pulumi.Input.fromValue(map['restoreEndTime'] as String),
      restoreType: pulumi.Input.fromValue(map['restoreType'] as String),
    );
  }
}

