// ignore_for_file: unused_element, unnecessary_cast

import 'google_type_date_contentwarehouse_v1.dart';
import 'google_type_date_time.dart';
import 'google_type_money_contentwarehouse_v1.dart';
import 'google_type_postal_address_contentwarehouse_v1.dart';

/// Parsed and normalized entity value.
class GoogleCloudDocumentaiV1DocumentEntityNormalizedValue {
  /// Postal address. See also: https://github.com/googleapis/googleapis/blob/master/google/type/postal_address.proto
  final GoogleTypePostalAddressContentwarehouseV1? addressValue;

  /// Boolean value. Can be used for entities with binary values, or for checkboxes.
  final bool? booleanValue;

  /// Date value. Includes year, month, day. See also: https://github.com/googleapis/googleapis/blob/master/google/type/date.proto
  final GoogleTypeDateContentwarehouseV1? dateValue;

  /// DateTime value. Includes date, time, and timezone. See also: https://github.com/googleapis/googleapis/blob/master/google/type/datetime.proto
  final GoogleTypeDateTime? datetimeValue;

  /// Float value.
  final double? floatValue;

  /// Integer value.
  final int? integerValue;

  /// Money value. See also: https://github.com/googleapis/googleapis/blob/master/google/type/money.proto
  final GoogleTypeMoneyContentwarehouseV1? moneyValue;

  /// Optional. An optional field to store a normalized string. For some entity types, one of respective `structured_value` fields may also be populated. Also not all the types of `structured_value` will be normalized. For example, some processors may not generate `float` or `integer` normalized text by default. Below are sample formats mapped to structured values. - Money/Currency type (`money_value`) is in the ISO 4217 text format. - Date type (`date_value`) is in the ISO 8601 text format. - Datetime type (`datetime_value`) is in the ISO 8601 text format.
  final String? text;

  GoogleCloudDocumentaiV1DocumentEntityNormalizedValue({
    this.addressValue,
    this.booleanValue,
    this.dateValue,
    this.datetimeValue,
    this.floatValue,
    this.integerValue,
    this.moneyValue,
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressValueValue = addressValue;
    if (addressValueValue != null) {
      map['addressValue'] = addressValueValue.toMap();
    }
    final booleanValueValue = booleanValue;
    if (booleanValueValue != null) {
      map['booleanValue'] = booleanValueValue;
    }
    final dateValueValue = dateValue;
    if (dateValueValue != null) {
      map['dateValue'] = dateValueValue.toMap();
    }
    final datetimeValueValue = datetimeValue;
    if (datetimeValueValue != null) {
      map['datetimeValue'] = datetimeValueValue.toMap();
    }
    final floatValueValue = floatValue;
    if (floatValueValue != null) {
      map['floatValue'] = floatValueValue;
    }
    final integerValueValue = integerValue;
    if (integerValueValue != null) {
      map['integerValue'] = integerValueValue;
    }
    final moneyValueValue = moneyValue;
    if (moneyValueValue != null) {
      map['moneyValue'] = moneyValueValue.toMap();
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentEntityNormalizedValue.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentEntityNormalizedValue(
      addressValue: map['addressValue'] == null
          ? null
          : GoogleTypePostalAddressContentwarehouseV1.fromMap(
              (map['addressValue'] as Map).cast<String, dynamic>()),
      booleanValue:
          map['booleanValue'] == null ? null : map['booleanValue'] as bool,
      dateValue: map['dateValue'] == null
          ? null
          : GoogleTypeDateContentwarehouseV1.fromMap(
              (map['dateValue'] as Map).cast<String, dynamic>()),
      datetimeValue: map['datetimeValue'] == null
          ? null
          : GoogleTypeDateTime.fromMap(
              (map['datetimeValue'] as Map).cast<String, dynamic>()),
      floatValue:
          map['floatValue'] == null ? null : map['floatValue'] as double,
      integerValue:
          map['integerValue'] == null ? null : map['integerValue'] as int,
      moneyValue: map['moneyValue'] == null
          ? null
          : GoogleTypeMoneyContentwarehouseV1.fromMap(
              (map['moneyValue'] as Map).cast<String, dynamic>()),
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
