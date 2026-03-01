// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_condition_operator.dart';
import 'google_privacy_dlp_v2_field_id.dart';
import 'google_privacy_dlp_v2_value.dart';

/// The field type of `value` and `field` do not need to match to be considered equal, but not all comparisons are possible. EQUAL_TO and NOT_EQUAL_TO attempt to compare even with incompatible types, but all other comparisons are invalid with incompatible types. A `value` of type: - `string` can be compared against all other types - `boolean` can only be compared against other booleans - `integer` can be compared against doubles or a string if the string value can be parsed as an integer. - `double` can be compared against integers or a string if the string can be parsed as a double. - `Timestamp` can be compared against strings in RFC 3339 date string format. - `TimeOfDay` can be compared against timestamps and strings in the format of 'HH:mm:ss'. If we fail to compare do to type mismatch, a warning will be given and the condition will evaluate to false.
class GooglePrivacyDlpV2Condition {
  /// Field within the record this condition is evaluated against.
  final GooglePrivacyDlpV2FieldId field;

  /// Operator used to compare the field or infoType to the value.
  final GooglePrivacyDlpV2ConditionOperator operator;

  /// Value to compare against. [Mandatory, except for `EXISTS` tests.]
  final GooglePrivacyDlpV2Value? value;

  /// Creates a new [GooglePrivacyDlpV2Condition].
  /// [field] Field within the record this condition is evaluated against.
  /// [operator] Operator used to compare the field or infoType to the value.
  /// [value] Value to compare against. [Mandatory, except for `EXISTS` tests.]
  GooglePrivacyDlpV2Condition({
    required this.field,
    required this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': field.toMap(),
      'operator': operator.value,
      'value': ?value == null ? null : value!.toMap(),
    };
  }

  factory GooglePrivacyDlpV2Condition.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2Condition(
      field: GooglePrivacyDlpV2FieldId.fromMap(
        (map['field'] as Map).cast<String, dynamic>(),
      ),
      operator: GooglePrivacyDlpV2ConditionOperator.fromValue(
        map['operator'] as String,
      ),
      value: map['value'] == null
          ? null
          : GooglePrivacyDlpV2Value.fromMap(
              (map['value'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
