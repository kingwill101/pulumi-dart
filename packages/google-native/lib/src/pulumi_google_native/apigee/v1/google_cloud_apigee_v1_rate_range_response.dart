// ignore_for_file: unused_element, unnecessary_cast

import 'google_type_money_response3.dart';

/// API call volume range and the fees charged when the total number of API calls is within the range.
class GoogleCloudApigeeV1RateRangeResponse {
  /// Ending value of the range. Set to 0 or `null` for the last range of values.
  final String end;

  /// Fee to charge when total number of API calls falls within this range.
  final GoogleTypeMoneyResponse3 fee;

  /// Starting value of the range. Set to 0 or `null` for the initial range of values.
  final String start;

  GoogleCloudApigeeV1RateRangeResponse({
    required this.end,
    required this.fee,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['end'] = end;
    map['fee'] = fee.toMap();
    map['start'] = start;
    return map;
  }

  factory GoogleCloudApigeeV1RateRangeResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1RateRangeResponse(
      end: map['end'] as String,
      fee: GoogleTypeMoneyResponse3.fromMap(
          (map['fee'] as Map).cast<String, dynamic>()),
      start: map['start'] as String,
    );
  }
}
