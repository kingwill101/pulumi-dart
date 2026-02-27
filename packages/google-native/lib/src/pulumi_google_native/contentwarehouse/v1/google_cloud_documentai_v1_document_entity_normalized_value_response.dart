// ignore_for_file: unused_element, unnecessary_cast

import 'google_type_date_response_contentwarehouse_v1.dart';
import 'google_type_date_time_response.dart';
import 'google_type_money_response_contentwarehouse_v1.dart';
import 'google_type_postal_address_response_contentwarehouse_v1.dart';

/// Parsed and normalized entity value.
class GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse {
  /// Postal address. See also: https://github.com/googleapis/googleapis/blob/master/google/type/postal_address.proto
  final GoogleTypePostalAddressResponseContentwarehouseV1 addressValue;

  /// Boolean value. Can be used for entities with binary values, or for checkboxes.
  final bool booleanValue;

  /// Date value. Includes year, month, day. See also: https://github.com/googleapis/googleapis/blob/master/google/type/date.proto
  final GoogleTypeDateResponseContentwarehouseV1 dateValue;

  /// DateTime value. Includes date, time, and timezone. See also: https://github.com/googleapis/googleapis/blob/master/google/type/datetime.proto
  final GoogleTypeDateTimeResponse datetimeValue;

  /// Float value.
  final double floatValue;

  /// Integer value.
  final int integerValue;

  /// Money value. See also: https://github.com/googleapis/googleapis/blob/master/google/type/money.proto
  final GoogleTypeMoneyResponseContentwarehouseV1 moneyValue;

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
      addressValue: GoogleTypePostalAddressResponseContentwarehouseV1.fromMap(
          (map['addressValue'] as Map).cast<String, dynamic>()),
      booleanValue: map['booleanValue'] as bool,
      dateValue: GoogleTypeDateResponseContentwarehouseV1.fromMap(
          (map['dateValue'] as Map).cast<String, dynamic>()),
      datetimeValue: GoogleTypeDateTimeResponse.fromMap(
          (map['datetimeValue'] as Map).cast<String, dynamic>()),
      floatValue: map['floatValue'] as double,
      integerValue: map['integerValue'] as int,
      moneyValue: GoogleTypeMoneyResponseContentwarehouseV1.fromMap(
          (map['moneyValue'] as Map).cast<String, dynamic>()),
      text: map['text'] as String,
    );
  }
}
