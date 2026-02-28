// ignore_for_file: unused_element, unnecessary_cast

import 'source_numeric_filter.dart';
import 'source_text_filter.dart';
import 'value_transformation.dart';

/// Options to configure rule type ConditionalColumnSetValue. The rule is used to transform the data which is being replicated/migrated. The rule filter field can refer to one or more entities. The rule scope can be one of: Column.
class ConditionalColumnSetValue {
  /// Optional. Custom engine specific features.
  final Map<String, String>? customFeatures;

  /// Optional. Optional filter on source column precision and scale. Used for fixed point numbers such as NUMERIC/NUMBER data types.
  final SourceNumericFilter? sourceNumericFilter;

  /// Optional. Optional filter on source column length. Used for text based data types like varchar.
  final SourceTextFilter? sourceTextFilter;

  /// Description of data transformation during migration.
  final ValueTransformation valueTransformation;

  /// Creates a new [ConditionalColumnSetValue].
  /// [customFeatures] Optional. Custom engine specific features.
  /// [sourceNumericFilter] Optional. Optional filter on source column precision and scale. Used for fixed point numbers such as NUMERIC/NUMBER data types.
  /// [sourceTextFilter] Optional. Optional filter on source column length. Used for text based data types like varchar.
  /// [valueTransformation] Description of data transformation during migration.
  ConditionalColumnSetValue({
    this.customFeatures,
    this.sourceNumericFilter,
    this.sourceTextFilter,
    required this.valueTransformation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customFeaturesValue = customFeatures;
    if (customFeaturesValue != null) {
      map['customFeatures'] = customFeaturesValue;
    }
    final sourceNumericFilterValue = sourceNumericFilter;
    if (sourceNumericFilterValue != null) {
      map['sourceNumericFilter'] = sourceNumericFilterValue.toMap();
    }
    final sourceTextFilterValue = sourceTextFilter;
    if (sourceTextFilterValue != null) {
      map['sourceTextFilter'] = sourceTextFilterValue.toMap();
    }
    map['valueTransformation'] = valueTransformation.toMap();
    return map;
  }

  factory ConditionalColumnSetValue.fromMap(Map<String, dynamic> map) {
    return ConditionalColumnSetValue(
      customFeatures: map['customFeatures'] == null
          ? null
          : (map['customFeatures'] as Map).cast<String, String>(),
      sourceNumericFilter: map['sourceNumericFilter'] == null
          ? null
          : SourceNumericFilter.fromMap(
              (map['sourceNumericFilter'] as Map).cast<String, dynamic>()),
      sourceTextFilter: map['sourceTextFilter'] == null
          ? null
          : SourceTextFilter.fromMap(
              (map['sourceTextFilter'] as Map).cast<String, dynamic>()),
      valueTransformation: ValueTransformation.fromMap(
          (map['valueTransformation'] as Map).cast<String, dynamic>()),
    );
  }
}
