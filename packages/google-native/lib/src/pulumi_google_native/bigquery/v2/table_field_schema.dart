// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_field_schema_categories.dart';
import 'table_field_schema_policy_tags.dart';
import 'table_field_schema_range_element_type.dart';

class TableFieldSchema {
  /// [Optional] The categories attached to this field, used for field-level access control.
  final TableFieldSchemaCategories? categories;

  /// Optional. Collation specification of the field. It only can be set on string type field.
  final String? collation;

  /// Optional. A SQL expression to specify the default value for this field. It can only be set for top level fields (columns). You can use struct or array expression to specify default value for the entire struct or array. The valid SQL expressions are: - Literals for all data types, including STRUCT and ARRAY. - Following functions: - CURRENT_TIMESTAMP - CURRENT_TIME - CURRENT_DATE - CURRENT_DATETIME - GENERATE_UUID - RAND - SESSION_USER - ST_GEOGPOINT - Struct or array composed with the above allowed functions, for example, [CURRENT_DATE(), DATE '2020-01-01']
  final String? defaultValueExpression;

  /// [Optional] The field description. The maximum length is 1,024 characters.
  final String? description;

  /// [Optional] Describes the nested schema fields if the type property is set to RECORD.
  final List<TableFieldSchema>? fields;

  /// [Optional] Maximum length of values of this field for STRINGS or BYTES. If max_length is not specified, no maximum length constraint is imposed on this field. If type = "STRING", then max_length represents the maximum UTF-8 length of strings in this field. If type = "BYTES", then max_length represents the maximum number of bytes in this field. It is invalid to set this field if type ≠ "STRING" and ≠ "BYTES".
  final String? maxLength;

  /// [Optional] The field mode. Possible values include NULLABLE, REQUIRED and REPEATED. The default value is NULLABLE.
  final String? mode;

  /// [Required] The field name. The name must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_), and must start with a letter or underscore. The maximum length is 300 characters.
  final String? name;
  final TableFieldSchemaPolicyTags? policyTags;

  /// [Optional] Precision (maximum number of total digits in base 10) and scale (maximum number of digits in the fractional part in base 10) constraints for values of this field for NUMERIC or BIGNUMERIC. It is invalid to set precision or scale if type ≠ "NUMERIC" and ≠ "BIGNUMERIC". If precision and scale are not specified, no value range constraint is imposed on this field insofar as values are permitted by the type. Values of this NUMERIC or BIGNUMERIC field must be in this range when: - Precision (P) and scale (S) are specified: [-10P-S + 10-S, 10P-S - 10-S] - Precision (P) is specified but not scale (and thus scale is interpreted to be equal to zero): [-10P + 1, 10P - 1]. Acceptable values for precision and scale if both are specified: - If type = "NUMERIC": 1 ≤ precision - scale ≤ 29 and 0 ≤ scale ≤ 9. - If type = "BIGNUMERIC": 1 ≤ precision - scale ≤ 38 and 0 ≤ scale ≤ 38. Acceptable values for precision if only precision is specified but not scale (and thus scale is interpreted to be equal to zero): - If type = "NUMERIC": 1 ≤ precision ≤ 29. - If type = "BIGNUMERIC": 1 ≤ precision ≤ 38. If scale is specified but not precision, then it is invalid.
  final String? precision;

  /// Optional. The subtype of the RANGE, if the type of this field is RANGE. If the type is RANGE, this field is required. Possible values for the field element type of a RANGE include: - DATE - DATETIME - TIMESTAMP
  final TableFieldSchemaRangeElementType? rangeElementType;

  /// Optional. Rounding Mode specification of the field. It only can be set on NUMERIC or BIGNUMERIC type fields.
  final String? roundingMode;

  /// [Optional] See documentation for precision.
  final String? scale;

  /// [Required] The field data type. Possible values include STRING, BYTES, INTEGER, INT64 (same as INTEGER), FLOAT, FLOAT64 (same as FLOAT), NUMERIC, BIGNUMERIC, BOOLEAN, BOOL (same as BOOLEAN), TIMESTAMP, DATE, TIME, DATETIME, INTERVAL, RECORD (where RECORD indicates that the field contains a nested schema) or STRUCT (same as RECORD).
  final String? type;

  TableFieldSchema({
    this.categories,
    this.collation,
    this.defaultValueExpression,
    this.description,
    this.fields,
    this.maxLength,
    this.mode,
    this.name,
    this.policyTags,
    this.precision,
    this.rangeElementType,
    this.roundingMode,
    this.scale,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final categoriesValue = categories;
    if (categoriesValue != null) {
      map['categories'] = categoriesValue.toMap();
    }
    final collationValue = collation;
    if (collationValue != null) {
      map['collation'] = collationValue;
    }
    final defaultValueExpressionValue = defaultValueExpression;
    if (defaultValueExpressionValue != null) {
      map['defaultValueExpression'] = defaultValueExpressionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] =
          pulumi.Input.encodeList<TableFieldSchema, Map<String, dynamic>>(
              fieldsValue, (value) => value.toMap());
    }
    final maxLengthValue = maxLength;
    if (maxLengthValue != null) {
      map['maxLength'] = maxLengthValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final policyTagsValue = policyTags;
    if (policyTagsValue != null) {
      map['policyTags'] = policyTagsValue.toMap();
    }
    final precisionValue = precision;
    if (precisionValue != null) {
      map['precision'] = precisionValue;
    }
    final rangeElementTypeValue = rangeElementType;
    if (rangeElementTypeValue != null) {
      map['rangeElementType'] = rangeElementTypeValue.toMap();
    }
    final roundingModeValue = roundingMode;
    if (roundingModeValue != null) {
      map['roundingMode'] = roundingModeValue;
    }
    final scaleValue = scale;
    if (scaleValue != null) {
      map['scale'] = scaleValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory TableFieldSchema.fromMap(Map<String, dynamic> map) {
    return TableFieldSchema(
      categories: map['categories'] == null
          ? null
          : TableFieldSchemaCategories.fromMap(
              (map['categories'] as Map).cast<String, dynamic>()),
      collation: map['collation'] == null ? null : map['collation'] as String,
      defaultValueExpression: map['defaultValueExpression'] == null
          ? null
          : map['defaultValueExpression'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      fields: map['fields'] == null
          ? null
          : pulumi.Input.decodeList<TableFieldSchema>(
              map['fields'],
              (value) => TableFieldSchema.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maxLength: map['maxLength'] == null ? null : map['maxLength'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      policyTags: map['policyTags'] == null
          ? null
          : TableFieldSchemaPolicyTags.fromMap(
              (map['policyTags'] as Map).cast<String, dynamic>()),
      precision: map['precision'] == null ? null : map['precision'] as String,
      rangeElementType: map['rangeElementType'] == null
          ? null
          : TableFieldSchemaRangeElementType.fromMap(
              (map['rangeElementType'] as Map).cast<String, dynamic>()),
      roundingMode:
          map['roundingMode'] == null ? null : map['roundingMode'] as String,
      scale: map['scale'] == null ? null : map['scale'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
