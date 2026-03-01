// ignore_for_file: unused_element, unnecessary_cast


class ScheduleBase {
  /// A system assigned id for the schedule.
  final String? id;
  /// The current deployment state of schedule.
  final String? provisioningStatus;
  /// Is the schedule enabled or disabled?
  final String? status;

  /// Creates a new [ScheduleBase].
  /// [id] A system assigned id for the schedule.
  /// [provisioningStatus] The current deployment state of schedule.
  /// [status] Is the schedule enabled or disabled?
  ScheduleBase({
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

  factory ScheduleBase.fromMap(Map<String, dynamic> map) {
    return ScheduleBase(
      id: map['id'] == null ? null : map['id'] as String,
      provisioningStatus: map['provisioningStatus'] == null ? null : map['provisioningStatus'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

