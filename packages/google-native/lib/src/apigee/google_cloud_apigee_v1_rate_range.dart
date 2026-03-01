// ignore_for_file: unused_element, unnecessary_cast

import 'google_type_money.dart';

/// API call volume range and the fees charged when the total number of API calls is within the range.
class GoogleCloudApigeeV1RateRange {
  /// Ending value of the range. Set to 0 or `null` for the last range of values.
  final String? end;

  /// Fee to charge when total number of API calls falls within this range.
  final GoogleTypeMoney? fee;

  /// Starting value of the range. Set to 0 or `null` for the initial range of values.
  final String? start;

  /// Creates a new [GoogleCloudApigeeV1RateRange].
  /// [end] Ending value of the range. Set to 0 or `null` for the last range of values.
  /// [fee] Fee to charge when total number of API calls falls within this range.
  /// [start] Starting value of the range. Set to 0 or `null` for the initial range of values.
  GoogleCloudApigeeV1RateRange({this.end, this.fee, this.start});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?end,
      'fee': ?fee == null ? null : fee!.toMap(),
      'start': ?start,
    };
  }

  factory GoogleCloudApigeeV1RateRange.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1RateRange(
      end: map['end'] == null ? null : map['end'] as String,
      fee: map['fee'] == null
          ? null
          : GoogleTypeMoney.fromMap(
              (map['fee'] as Map).cast<String, dynamic>(),
            ),
      start: map['start'] == null ? null : map['start'] as String,
    );
  }
}
