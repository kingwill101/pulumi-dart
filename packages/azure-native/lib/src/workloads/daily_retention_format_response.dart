// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_response.dart';

/// Daily retention format.
class DailyRetentionFormatResponse {
  /// List of days of the month.
  final List<DayResponse>? daysOfTheMonth;

  /// Creates a new [DailyRetentionFormatResponse].
  /// [daysOfTheMonth] List of days of the month.
  DailyRetentionFormatResponse({
    this.daysOfTheMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfTheMonth': ?daysOfTheMonth == null ? null : pulumi.Input.encodeList<DayResponse, Map<String, dynamic>>(daysOfTheMonth!, (value) => value.toMap()),
    };
  }

  factory DailyRetentionFormatResponse.fromMap(Map<String, dynamic> map) {
    return DailyRetentionFormatResponse(
      daysOfTheMonth: map['daysOfTheMonth'] == null ? null : pulumi.Input.decodeList<DayResponse>(map['daysOfTheMonth'], (value) => DayResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

