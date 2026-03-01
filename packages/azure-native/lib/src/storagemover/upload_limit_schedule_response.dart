// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upload_limit_weekly_recurrence_response.dart';

/// The WAN-link upload limit schedule. Overlapping recurrences are not allowed.
class UploadLimitScheduleResponse {
  /// The set of weekly repeating recurrences of the WAN-link upload limit schedule.
  final List<UploadLimitWeeklyRecurrenceResponse>? weeklyRecurrences;

  /// Creates a new [UploadLimitScheduleResponse].
  /// [weeklyRecurrences] The set of weekly repeating recurrences of the WAN-link upload limit schedule.
  UploadLimitScheduleResponse({
    this.weeklyRecurrences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weeklyRecurrences': ?weeklyRecurrences == null ? null : pulumi.Input.encodeList<UploadLimitWeeklyRecurrenceResponse, Map<String, dynamic>>(weeklyRecurrences!, (value) => value.toMap()),
    };
  }

  factory UploadLimitScheduleResponse.fromMap(Map<String, dynamic> map) {
    return UploadLimitScheduleResponse(
      weeklyRecurrences: map['weeklyRecurrences'] == null ? null : pulumi.Input.decodeList<UploadLimitWeeklyRecurrenceResponse>(map['weeklyRecurrences'], (value) => UploadLimitWeeklyRecurrenceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

