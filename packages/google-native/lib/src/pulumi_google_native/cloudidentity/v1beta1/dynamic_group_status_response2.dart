// ignore_for_file: unused_element, unnecessary_cast

/// The current status of a dynamic group along with timestamp.
class DynamicGroupStatusResponse2 {
  /// Status of the dynamic group.
  final String status;

  /// The latest time at which the dynamic group is guaranteed to be in the given status. If status is `UP_TO_DATE`, the latest time at which the dynamic group was confirmed to be up-to-date. If status is `UPDATING_MEMBERSHIPS`, the time at which dynamic group was created.
  final String statusTime;

  DynamicGroupStatusResponse2({
    required this.status,
    required this.statusTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['statusTime'] = statusTime;
    return map;
  }

  factory DynamicGroupStatusResponse2.fromMap(Map<String, dynamic> map) {
    return DynamicGroupStatusResponse2(
      status: map['status'] as String,
      statusTime: map['statusTime'] as String,
    );
  }
}
