// ignore_for_file: unused_element, unnecessary_cast

import 'source_numeric_filter.dart';
import 'source_text_filter.dart';

/// Options to configure rule type MultiColumnDatatypeChange. The rule is used to change the data type and associated properties of multiple columns at once. The rule filter field can refer to one or more entities. The rule scope can be one of:Column. This rule requires additional filters to be specified beyond the basic rule filter field, which is the source data type, but the rule supports additional filtering capabilities such as the minimum and maximum field length. All additional filters which are specified are required to be met in order for the rule to be applied (logical AND between the fields).
class MultiColumnDatatypeChange {
  /// Optional. Custom engine specific features.
  final Map<String, String>? customFeatures;

  /// New data type.
  final String newDataType;

  /// Optional. Column fractional seconds precision - used only for timestamp based datatypes - if not specified and relevant uses the source column fractional seconds precision.
  final int? overrideFractionalSecondsPrecision;

  /// Optional. Column length - e.g. varchar (50) - if not specified and relevant uses the source column length.
  final String? overrideLength;

  /// Optional. Column precision - when relevant - if not specified and relevant uses the source column precision.
  final int? overridePrecision;

  /// Optional. Column scale - when relevant - if not specified and relevant uses the source column scale.
  final int? overrideScale;

  /// Filter on source data type.
  final String sourceDataTypeFilter;

  /// Optional. Filter for fixed point number data types such as NUMERIC/NUMBER.
  final SourceNumericFilter? sourceNumericFilter;

  /// Optional. Filter for text-based data types like varchar.
  final SourceTextFilter? sourceTextFilter;

  /// Creates a new [MultiColumnDatatypeChange].
  /// [customFeatures] Optional. Custom engine specific features.
  /// [newDataType] New data type.
  /// [overrideFractionalSecondsPrecision] Optional. Column fractional seconds precision - used only for timestamp based datatypes - if not specified and relevant uses the source column fractional seconds precision.
  /// [overrideLength] Optional. Column length - e.g. varchar (50) - if not specified and relevant uses the source column length.
  /// [overridePrecision] Optional. Column precision - when relevant - if not specified and relevant uses the source column precision.
  /// [overrideScale] Optional. Column scale - when relevant - if not specified and relevant uses the source column scale.
  /// [sourceDataTypeFilter] Filter on source data type.
  /// [sourceNumericFilter] Optional. Filter for fixed point number data types such as NUMERIC/NUMBER.
  /// [sourceTextFilter] Optional. Filter for text-based data types like varchar.
  MultiColumnDatatypeChange({
    this.customFeatures,
    required this.newDataType,
    this.overrideFractionalSecondsPrecision,
    this.overrideLength,
    this.overridePrecision,
    this.overrideScale,
    required this.sourceDataTypeFilter,
    this.sourceNumericFilter,
    this.sourceTextFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFeatures': ?customFeatures,
      'newDataType': newDataType,
      'overrideFractionalSecondsPrecision': ?overrideFractionalSecondsPrecision,
      'overrideLength': ?overrideLength,
      'overridePrecision': ?overridePrecision,
      'overrideScale': ?overrideScale,
      'sourceDataTypeFilter': sourceDataTypeFilter,
      'sourceNumericFilter': ?sourceNumericFilter == null
          ? null
          : sourceNumericFilter!.toMap(),
      'sourceTextFilter': ?sourceTextFilter == null
          ? null
          : sourceTextFilter!.toMap(),
    };
  }

  factory MultiColumnDatatypeChange.fromMap(Map<String, dynamic> map) {
    return MultiColumnDatatypeChange(
      customFeatures: map['customFeatures'] == null
          ? null
          : (map['customFeatures'] as Map).cast<String, String>(),
      newDataType: map['newDataType'] as String,
      overrideFractionalSecondsPrecision:
          map['overrideFractionalSecondsPrecision'] == null
          ? null
          : map['overrideFractionalSecondsPrecision'] as int,
      overrideLength: map['overrideLength'] == null
          ? null
          : map['overrideLength'] as String,
      overridePrecision: map['overridePrecision'] == null
          ? null
          : map['overridePrecision'] as int,
      overrideScale: map['overrideScale'] == null
          ? null
          : map['overrideScale'] as int,
      sourceDataTypeFilter: map['sourceDataTypeFilter'] as String,
      sourceNumericFilter: map['sourceNumericFilter'] == null
          ? null
          : SourceNumericFilter.fromMap(
              (map['sourceNumericFilter'] as Map).cast<String, dynamic>(),
            ),
      sourceTextFilter: map['sourceTextFilter'] == null
          ? null
          : SourceTextFilter.fromMap(
              (map['sourceTextFilter'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
