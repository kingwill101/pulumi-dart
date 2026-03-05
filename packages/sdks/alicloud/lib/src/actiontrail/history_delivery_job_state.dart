// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HistoryDeliveryJob resources.
class HistoryDeliveryJobState {
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// The status of the resource
  final pulumi.Input<int>? status;
  /// The Track Name.
  final pulumi.Input<String>? trailName;

  /// Creates a new [HistoryDeliveryJobState].
  /// [createTime] The creation time of the resource
  /// [status] The status of the resource
  /// [trailName] The Track Name.
  HistoryDeliveryJobState({
    this.createTime,
    this.status,
    this.trailName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'status': ?status,
      'trailName': ?trailName,
    };
  }

  factory HistoryDeliveryJobState.fromMap(Map<String, dynamic> map) {
    return HistoryDeliveryJobState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      trailName: (() { final guardedValue = map['trailName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

