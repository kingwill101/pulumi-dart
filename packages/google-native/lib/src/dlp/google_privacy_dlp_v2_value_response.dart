// ignore_for_file: unused_element, unnecessary_cast

import 'google_type_date_response.dart';
import 'google_type_time_of_day_response.dart';

/// Set of primitive values supported by the system. Note that for the purposes of inspection or transformation, the number of bytes considered to comprise a 'Value' is based on its representation as a UTF-8 encoded string. For example, if 'integer_value' is set to 123456789, the number of bytes would be counted as 9, even though an int64 only holds up to 8 bytes of data.
class GooglePrivacyDlpV2ValueResponse {
  /// boolean
  final bool booleanValue;
  /// date
  final GoogleTypeDateResponse dateValue;
  /// day of week
  final String dayOfWeekValue;
  /// float
  final double floatValue;
  /// integer
  final String integerValue;
  /// string
  final String stringValue;
  /// time of day
  final GoogleTypeTimeOfDayResponse timeValue;
  /// timestamp
  final String timestampValue;

  /// Creates a new [GooglePrivacyDlpV2ValueResponse].
  /// [booleanValue] boolean
  /// [dateValue] date
  /// [dayOfWeekValue] day of week
  /// [floatValue] float
  /// [integerValue] integer
  /// [stringValue] string
  /// [timeValue] time of day
  /// [timestampValue] timestamp
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
    return <String, dynamic>{
      'booleanValue': booleanValue,
      'dateValue': dateValue.toMap(),
      'dayOfWeekValue': dayOfWeekValue,
      'floatValue': floatValue,
      'integerValue': integerValue,
      'stringValue': stringValue,
      'timeValue': timeValue.toMap(),
      'timestampValue': timestampValue,
    };
  }

  factory GooglePrivacyDlpV2ValueResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ValueResponse(
      booleanValue: map['booleanValue'] as bool,
      dateValue: GoogleTypeDateResponse.fromMap((map['dateValue'] as Map).cast<String, dynamic>()),
      dayOfWeekValue: map['dayOfWeekValue'] as String,
      floatValue: map['floatValue'] as double,
      integerValue: map['integerValue'] as String,
      stringValue: map['stringValue'] as String,
      timeValue: GoogleTypeTimeOfDayResponse.fromMap((map['timeValue'] as Map).cast<String, dynamic>()),
      timestampValue: map['timestampValue'] as String,
    );
  }
}

