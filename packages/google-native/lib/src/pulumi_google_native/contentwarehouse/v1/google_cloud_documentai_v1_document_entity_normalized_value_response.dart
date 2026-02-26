// ignore_for_file: unused_element, unnecessary_cast

import 'google_type_date_response4.dart';
import 'google_type_date_time_response.dart';
import 'google_type_money_response6.dart';
import 'google_type_postal_address_response2.dart';

/// Parsed and normalized entity value.
class GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse {
  /// Postal address. See also: https://github.com/googleapis/googleapis/blob/master/google/type/postal_address.proto
  final GoogleTypePostalAddressResponse2 addressValue;

  /// Boolean value. Can be used for entities with binary values, or for checkboxes.
  final bool booleanValue;

  /// Date value. Includes year, month, day. See also: https://github.com/googleapis/googleapis/blob/master/google/type/date.proto
  final GoogleTypeDateResponse4 dateValue;

  /// DateTime value. Includes date, time, and timezone. See also: https://github.com/googleapis/googleapis/blob/master/google/type/datetime.proto
  final GoogleTypeDateTimeResponse datetimeValue;

  /// Float value.
  final double floatValue;

  /// Integer value.
  final int integerValue;

  /// Money value. See also: https://github.com/googleapis/googleapis/blob/master/google/type/money.proto
  final GoogleTypeMoneyResponse6 moneyValue;

  /// Optional. An optional field to store a normalized string. For some entity types, one of respective `structured_value` fields may also be populated. Also not all the types of `structured_value` will be normalized. For example, some processors may not generate `float` or `integer` normalized text by default. Below are sample formats mapped to structured values. - Money/Currency type (`money_value`) is in the ISO 4217 text format. - Date type (`date_value`) is in the ISO 8601 text format. - Datetime type (`datetime_value`) is in the ISO 8601 text format.
  final String text;

  GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse({
    required this.addressValue,
    required this.booleanValue,
    required this.dateValue,
    required this.datetimeValue,
    required this.floatValue,
    required this.integerValue,
    required this.moneyValue,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addressValue'] = addressValue.toMap();
    map['booleanValue'] = booleanValue;
    map['dateValue'] = dateValue.toMap();
    map['datetimeValue'] = datetimeValue.toMap();
    map['floatValue'] = floatValue;
    map['integerValue'] = integerValue;
    map['moneyValue'] = moneyValue.toMap();
    map['text'] = text;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse(
      addressValue: GoogleTypePostalAddressResponse2.fromMap(
          (map['addressValue'] as Map).cast<String, dynamic>()),
      booleanValue: map['booleanValue'] as bool,
      dateValue: GoogleTypeDateResponse4.fromMap(
          (map['dateValue'] as Map).cast<String, dynamic>()),
      datetimeValue: GoogleTypeDateTimeResponse.fromMap(
          (map['datetimeValue'] as Map).cast<String, dynamic>()),
      floatValue: map['floatValue'] as double,
      integerValue: map['integerValue'] as int,
      moneyValue: GoogleTypeMoneyResponse6.fromMap(
          (map['moneyValue'] as Map).cast<String, dynamic>()),
      text: map['text'] as String,
    );
  }
}
