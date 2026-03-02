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
  ScheduleBaseResponse({
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
      id: map['id'] == null ? null : (map['id']! as String).input(),
      provisioningStatus: map['provisioningStatus'] == null ? null : (map['provisioningStatus']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

