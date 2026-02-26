// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_replace_config_new_value_date_value/prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_replace_config_new_value_date_value.dart';
import '../prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_replace_config_new_value_time_value/prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_replace_config_new_value_time_value.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationReplaceConfigNewValue {
  /// A boolean value.
  final bool? booleanValue;

  /// Represents a whole or partial calendar date.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationReplaceConfigNewValueDateValue?
      dateValue;

  /// Represents a day of the week.
  /// Possible values are: `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final String? dayOfWeekValue;

  /// A float value.
  final double? floatValue;

  /// An integer value (int64 format)
  final String? integerValue;

  /// A string value.
  final String? stringValue;

  /// Represents a time of day.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationReplaceConfigNewValueTimeValue?
      timeValue;

  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? timestampValue;

  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationReplaceConfigNewValue({
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
    final map = <String, dynamic>{};
    final booleanValueValue = booleanValue;
    if (booleanValueValue != null) {
      map['booleanValue'] = booleanValueValue;
    }
    final dateValueValue = dateValue;
    if (dateValueValue != null) {
      map['dateValue'] = dateValueValue.toMap();
    }
    final dayOfWeekValueValue = dayOfWeekValue;
    if (dayOfWeekValueValue != null) {
      map['dayOfWeekValue'] = dayOfWeekValueValue;
    }
    final floatValueValue = floatValue;
    if (floatValueValue != null) {
      map['floatValue'] = floatValueValue;
    }
    final integerValueValue = integerValue;
    if (integerValueValue != null) {
      map['integerValue'] = integerValueValue;
    }
    final stringValueValue = stringValue;
    if (stringValueValue != null) {
      map['stringValue'] = stringValueValue;
    }
    final timeValueValue = timeValue;
    if (timeValueValue != null) {
      map['timeValue'] = timeValueValue.toMap();
    }
    final timestampValueValue = timestampValue;
    if (timestampValueValue != null) {
      map['timestampValue'] = timestampValueValue;
    }
    return map;
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationReplaceConfigNewValue.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationReplaceConfigNewValue(
      booleanValue:
          map['booleanValue'] == null ? null : map['booleanValue'] as bool,
      dateValue: map['dateValue'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationReplaceConfigNewValueDateValue
              .fromMap((map['dateValue'] as Map).cast<String, dynamic>()),
      dayOfWeekValue: map['dayOfWeekValue'] == null
          ? null
          : map['dayOfWeekValue'] as String,
      floatValue:
          map['floatValue'] == null ? null : map['floatValue'] as double,
      integerValue:
          map['integerValue'] == null ? null : map['integerValue'] as String,
      stringValue:
          map['stringValue'] == null ? null : map['stringValue'] as String,
      timeValue: map['timeValue'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationReplaceConfigNewValueTimeValue
              .fromMap((map['timeValue'] as Map).cast<String, dynamic>()),
      timestampValue: map['timestampValue'] == null
          ? null
          : map['timestampValue'] as String,
    );
  }
}
