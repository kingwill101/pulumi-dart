// ignore_for_file: unused_element, unnecessary_cast

import 'google_type_date_response5.dart';
import 'google_type_time_of_day_response4.dart';

/// Set of primitive values supported by the system. Note that for the purposes of inspection or transformation, the number of bytes considered to comprise a 'Value' is based on its representation as a UTF-8 encoded string. For example, if 'integer_value' is set to 123456789, the number of bytes would be counted as 9, even though an int64 only holds up to 8 bytes of data.
class GooglePrivacyDlpV2ValueResponse {
  /// boolean
  final bool booleanValue;

  /// date
  final GoogleTypeDateResponse5 dateValue;

  /// day of week
  final String dayOfWeekValue;

  /// float
  final double floatValue;

  /// integer
  final String integerValue;

  /// string
  final String stringValue;

  /// time of day
  final GoogleTypeTimeOfDayResponse4 timeValue;

  /// timestamp
  final String timestampValue;

  GooglePrivacyDlpV2ValueResponse({
    required this.booleanValue,
    required this.dateValue,
    required this.dayOfWeekValue,
    required this.floatValue,
    required this.integerValue,
    required this.stringValue,
    required this.timeValue,
    required this.timestampValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['booleanValue'] = booleanValue;
    map['dateValue'] = dateValue.toMap();
    map['dayOfWeekValue'] = dayOfWeekValue;
    map['floatValue'] = floatValue;
    map['integerValue'] = integerValue;
    map['stringValue'] = stringValue;
    map['timeValue'] = timeValue.toMap();
    map['timestampValue'] = timestampValue;
    return map;
  }

  factory GooglePrivacyDlpV2ValueResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ValueResponse(
      booleanValue: map['booleanValue'] as bool,
      dateValue: GoogleTypeDateResponse5.fromMap(
          (map['dateValue'] as Map).cast<String, dynamic>()),
      dayOfWeekValue: map['dayOfWeekValue'] as String,
      floatValue: map['floatValue'] as double,
      integerValue: map['integerValue'] as String,
      stringValue: map['stringValue'] as String,
      timeValue: GoogleTypeTimeOfDayResponse4.fromMap(
          (map['timeValue'] as Map).cast<String, dynamic>()),
      timestampValue: map['timestampValue'] as String,
    );
  }
}
