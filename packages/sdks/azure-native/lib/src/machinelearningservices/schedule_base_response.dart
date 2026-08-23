// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduleBaseResponse {
  /// A system assigned id for the schedule.
  final pulumi.Input<String>? id;
  /// The current deployment state of schedule.
  final pulumi.Input<String>? provisioningStatus;
  /// Is the schedule enabled or disabled?
  final pulumi.Input<String>? status;

  /// Creates a new [ScheduleBaseResponse].
  /// [id] A system assigned id for the schedule.
  /// [provisioningStatus] The current deployment state of schedule.
  /// [status] Is the schedule enabled or disabled?
  const ScheduleBaseResponse({
    this.id,
    this.provisioningStatus,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'provisioningStatus': ?provisioningStatus,
      'status': ?status,
    };
  }

  factory ScheduleBaseResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleBaseResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningStatus: (() { final guardedValue = map['provisioningStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
