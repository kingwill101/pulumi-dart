// ignore_for_file: unused_element, unnecessary_cast

import 'date_response.dart';
import 'time_of_day_response.dart';

/// Transfers can be scheduled to recur or to run just once.
class ScheduleResponse {
  /// The time in UTC that no further transfer operations are scheduled. Combined with schedule_end_date, `end_time_of_day` specifies the end date and time for starting new transfer operations. This field must be greater than or equal to the timestamp corresponding to the combintation of schedule_start_date and start_time_of_day, and is subject to the following: * If `end_time_of_day` is not set and `schedule_end_date` is set, then a default value of `23:59:59` is used for `end_time_of_day`. * If `end_time_of_day` is set and `schedule_end_date` is not set, then INVALID_ARGUMENT is returned.
  final TimeOfDayResponse endTimeOfDay;
  /// Interval between the start of each scheduled TransferOperation. If unspecified, the default value is 24 hours. This value may not be less than 1 hour.
  final String repeatInterval;
  /// The last day a transfer runs. Date boundaries are determined relative to UTC time. A job runs once per 24 hours within the following guidelines: * If `schedule_end_date` and schedule_start_date are the same and in the future relative to UTC, the transfer is executed only one time. * If `schedule_end_date` is later than `schedule_start_date` and `schedule_end_date` is in the future relative to UTC, the job runs each day at start_time_of_day through `schedule_end_date`.
  final DateResponse scheduleEndDate;
  /// The start date of a transfer. Date boundaries are determined relative to UTC time. If `schedule_start_date` and start_time_of_day are in the past relative to the job's creation time, the transfer starts the day after you schedule the transfer request. **Note:** When starting jobs at or near midnight UTC it is possible that a job starts later than expected. For example, if you send an outbound request on June 1 one millisecond prior to midnight UTC and the Storage Transfer Service server receives the request on June 2, then it creates a TransferJob with `schedule_start_date` set to June 2 and a `start_time_of_day` set to midnight UTC. The first scheduled TransferOperation takes place on June 3 at midnight UTC.
  final DateResponse scheduleStartDate;
  /// The time in UTC that a transfer job is scheduled to run. Transfers may start later than this time. If `start_time_of_day` is not specified: * One-time transfers run immediately. * Recurring transfers run immediately, and each day at midnight UTC, through schedule_end_date. If `start_time_of_day` is specified: * One-time transfers run at the specified time. * Recurring transfers run at the specified time each day, through `schedule_end_date`.
  final TimeOfDayResponse startTimeOfDay;

  /// Creates a new [ScheduleResponse].
  /// [endTimeOfDay] The time in UTC that no further transfer operations are scheduled. Combined with schedule_end_date, `end_time_of_day` specifies the end date and time for starting new transfer operations. This field must be greater than or equal to the timestamp corresponding to the combintation of schedule_start_date and start_time_of_day, and is subject to the following: * If `end_time_of_day` is not set and `schedule_end_date` is set, then a default value of `23:59:59` is used for `end_time_of_day`. * If `end_time_of_day` is set and `schedule_end_date` is not set, then INVALID_ARGUMENT is returned.
  /// [repeatInterval] Interval between the start of each scheduled TransferOperation. If unspecified, the default value is 24 hours. This value may not be less than 1 hour.
  /// [scheduleEndDate] The last day a transfer runs. Date boundaries are determined relative to UTC time. A job runs once per 24 hours within the following guidelines: * If `schedule_end_date` and schedule_start_date are the same and in the future relative to UTC, the transfer is executed only one time. * If `schedule_end_date` is later than `schedule_start_date` and `schedule_end_date` is in the future relative to UTC, the job runs each day at start_time_of_day through `schedule_end_date`.
  /// [scheduleStartDate] The start date of a transfer. Date boundaries are determined relative to UTC time. If `schedule_start_date` and start_time_of_day are in the past relative to the job's creation time, the transfer starts the day after you schedule the transfer request. **Note:** When starting jobs at or near midnight UTC it is possible that a job starts later than expected. For example, if you send an outbound request on June 1 one millisecond prior to midnight UTC and the Storage Transfer Service server receives the request on June 2, then it creates a TransferJob with `schedule_start_date` set to June 2 and a `start_time_of_day` set to midnight UTC. The first scheduled TransferOperation takes place on June 3 at midnight UTC.
  /// [startTimeOfDay] The time in UTC that a transfer job is scheduled to run. Transfers may start later than this time. If `start_time_of_day` is not specified: * One-time transfers run immediately. * Recurring transfers run immediately, and each day at midnight UTC, through schedule_end_date. If `start_time_of_day` is specified: * One-time transfers run at the specified time. * Recurring transfers run at the specified time each day, through `schedule_end_date`.
  ScheduleResponse({
    required this.endTimeOfDay,
    required this.repeatInterval,
    required this.scheduleEndDate,
    required this.scheduleStartDate,
    required this.startTimeOfDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTimeOfDay': endTimeOfDay.toMap(),
      'repeatInterval': repeatInterval,
      'scheduleEndDate': scheduleEndDate.toMap(),
      'scheduleStartDate': scheduleStartDate.toMap(),
      'startTimeOfDay': startTimeOfDay.toMap(),
    };
  }

  factory ScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleResponse(
      endTimeOfDay: TimeOfDayResponse.fromMap((map['endTimeOfDay'] as Map).cast<String, dynamic>()),
      repeatInterval: map['repeatInterval'] as String,
      scheduleEndDate: DateResponse.fromMap((map['scheduleEndDate'] as Map).cast<String, dynamic>()),
      scheduleStartDate: DateResponse.fromMap((map['scheduleStartDate'] as Map).cast<String, dynamic>()),
      startTimeOfDay: TimeOfDayResponse.fromMap((map['startTimeOfDay'] as Map).cast<String, dynamic>()),
    );
  }
}

