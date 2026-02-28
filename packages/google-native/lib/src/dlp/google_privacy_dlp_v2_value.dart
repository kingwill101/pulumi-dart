// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_value_day_of_week_value.dart';
import 'google_type_date.dart';
import 'google_type_time_of_day.dart';

/// Set of primitive values supported by the system. Note that for the purposes of inspection or transformation, the number of bytes considered to comprise a 'Value' is based on its representation as a UTF-8 encoded string. For example, if 'integer_value' is set to 123456789, the number of bytes would be counted as 9, even though an int64 only holds up to 8 bytes of data.
class GooglePrivacyDlpV2Value {
  /// boolean
  final bool? booleanValue;
  /// date
  final GoogleTypeDate? dateValue;
  /// day of week
  final GooglePrivacyDlpV2ValueDayOfWeekValue? dayOfWeekValue;
  /// float
  final double? floatValue;
  /// integer
  final String? integerValue;
  /// string
  final String? stringValue;
  /// time of day
  final GoogleTypeTimeOfDay? timeValue;
  /// timestamp
  final String? timestampValue;

  /// Creates a new [GooglePrivacyDlpV2Value].
  /// [booleanValue] boolean
  /// [dateValue] date
  /// [dayOfWeekValue] day of week
  /// [floatValue] float
  /// [integerValue] integer
  /// [stringValue] string
  /// [timeValue] time of day
  /// [timestampValue] timestamp
  GooglePrivacyDlpV2Value({
    this.booleanValue,
    this.dateValue,
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timeValue,
    this.timestampValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanValue': ?booleanValue,
      'dateValue': ?dateValue == null ? null : dateValue!.toMap(),
      'dayOfWeekValue': ?dayOfWeekValue == null ? null : dayOfWeekValue!.value,
      'floatValue': ?floatValue,
      'integerValue': ?integerValue,
      'stringValue': ?stringValue,
      'timeValue': ?timeValue == null ? null : timeValue!.toMap(),
      'timestampValue': ?timestampValue,
    };
  }

  factory GooglePrivacyDlpV2Value.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2Value(
      booleanValue: map['booleanValue'] == null ? null : map['booleanValue'] as bool,
      dateValue: map['dateValue'] == null ? null : GoogleTypeDate.fromMap((map['dateValue'] as Map).cast<String, dynamic>()),
      dayOfWeekValue: map['dayOfWeekValue'] == null ? null : GooglePrivacyDlpV2ValueDayOfWeekValue.fromValue(map['dayOfWeekValue'] as String),
      floatValue: map['floatValue'] == null ? null : map['floatValue'] as double,
      integerValue: map['integerValue'] == null ? null : map['integerValue'] as String,
      stringValue: map['stringValue'] == null ? null : map['stringValue'] as String,
      timeValue: map['timeValue'] == null ? null : GoogleTypeTimeOfDay.fromMap((map['timeValue'] as Map).cast<String, dynamic>()),
      timestampValue: map['timestampValue'] == null ? null : map['timestampValue'] as String,
    );
  }
}

