// ignore_for_file: unused_element, unnecessary_cast

import 'instance_deny_maintenance_period_end_date.dart';
import 'instance_deny_maintenance_period_start_date.dart';
import 'instance_deny_maintenance_period_time.dart';

class InstanceDenyMaintenancePeriod {
  /// Required. Start date of the deny maintenance period
  /// Structure is documented below.
  final InstanceDenyMaintenancePeriodEndDate endDate;

  /// Required. Start date of the deny maintenance period
  /// Structure is documented below.
  final InstanceDenyMaintenancePeriodStartDate startDate;

  /// Required. Start time of the window in UTC time.
  /// Structure is documented below.
  final InstanceDenyMaintenancePeriodTime time;

  /// Creates a new [InstanceDenyMaintenancePeriod].
  /// [endDate] Required. Start date of the deny maintenance period
  /// [startDate] Required. Start date of the deny maintenance period
  /// [time] Required. Start time of the window in UTC time.
  InstanceDenyMaintenancePeriod({
    required this.endDate,
    required this.startDate,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endDate'] = endDate.toMap();
    map['startDate'] = startDate.toMap();
    map['time'] = time.toMap();
    return map;
  }

  factory InstanceDenyMaintenancePeriod.fromMap(Map<String, dynamic> map) {
    return InstanceDenyMaintenancePeriod(
      endDate: InstanceDenyMaintenancePeriodEndDate.fromMap(
          (map['endDate'] as Map).cast<String, dynamic>()),
      startDate: InstanceDenyMaintenancePeriodStartDate.fromMap(
          (map['startDate'] as Map).cast<String, dynamic>()),
      time: InstanceDenyMaintenancePeriodTime.fromMap(
          (map['time'] as Map).cast<String, dynamic>()),
    );
  }
}
