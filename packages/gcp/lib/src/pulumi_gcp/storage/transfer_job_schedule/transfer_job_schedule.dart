// ignore_for_file: unused_element, unnecessary_cast

import '../transfer_job_schedule_schedule_end_date/transfer_job_schedule_schedule_end_date.dart';
import '../transfer_job_schedule_schedule_start_date/transfer_job_schedule_schedule_start_date.dart';
import '../transfer_job_schedule_start_time_of_day/transfer_job_schedule_start_time_of_day.dart';

class TransferJobSchedule {
  /// Interval between the start of each scheduled transfer. If unspecified, the default value is 24 hours. This value may not be less than 1 hour. A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String? repeatInterval;

  /// The last day the recurring transfer will be run. If `schedule_end_date` is the same as `schedule_start_date`, the transfer will be executed only once. Structure documented below.
  final TransferJobScheduleScheduleEndDate? scheduleEndDate;

  /// The first day the recurring transfer is scheduled to run. If `schedule_start_date` is in the past, the transfer will run for the first time on the following day. Structure documented below.
  final TransferJobScheduleScheduleStartDate scheduleStartDate;

  /// The time in UTC at which the transfer will be scheduled to start in a day. Transfers may start later than this time. If not specified, recurring and one-time transfers that are scheduled to run today will run immediately; recurring transfers that are scheduled to run on a future date will start at approximately midnight UTC on that date. Note that when configuring a transfer with the Cloud Platform Console, the transfer's start time in a day is specified in your local timezone. Structure documented below.
  final TransferJobScheduleStartTimeOfDay? startTimeOfDay;

  TransferJobSchedule({
    this.repeatInterval,
    this.scheduleEndDate,
    required this.scheduleStartDate,
    this.startTimeOfDay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final repeatIntervalValue = repeatInterval;
    if (repeatIntervalValue != null) {
      map['repeatInterval'] = repeatIntervalValue;
    }
    final scheduleEndDateValue = scheduleEndDate;
    if (scheduleEndDateValue != null) {
      map['scheduleEndDate'] = scheduleEndDateValue.toMap();
    }
    map['scheduleStartDate'] = scheduleStartDate.toMap();
    final startTimeOfDayValue = startTimeOfDay;
    if (startTimeOfDayValue != null) {
      map['startTimeOfDay'] = startTimeOfDayValue.toMap();
    }
    return map;
  }

  factory TransferJobSchedule.fromMap(Map<String, dynamic> map) {
    return TransferJobSchedule(
      repeatInterval: map['repeatInterval'] == null
          ? null
          : map['repeatInterval'] as String,
      scheduleEndDate: map['scheduleEndDate'] == null
          ? null
          : TransferJobScheduleScheduleEndDate.fromMap(
              (map['scheduleEndDate'] as Map).cast<String, dynamic>()),
      scheduleStartDate: TransferJobScheduleScheduleStartDate.fromMap(
          (map['scheduleStartDate'] as Map).cast<String, dynamic>()),
      startTimeOfDay: map['startTimeOfDay'] == null
          ? null
          : TransferJobScheduleStartTimeOfDay.fromMap(
              (map['startTimeOfDay'] as Map).cast<String, dynamic>()),
    );
  }
}
