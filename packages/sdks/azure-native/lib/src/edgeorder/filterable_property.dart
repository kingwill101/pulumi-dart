// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Different types of filters supported and its values.
class FilterableProperty {
  /// Values to be filtered.
  final pulumi.Input<List<String>> supportedValues;
  /// Type of product filter.
  final pulumi.Input<String> type;

  /// Creates a new [FilterableProperty].
  /// [supportedValues] Values to be filtered.
  /// [type] Type of product filter.
  FilterableProperty({
    required this.supportedValues,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportedValues': supportedValues,
      'type': type,
    };
  }

  factory FilterableProperty.fromMap(Map<String, dynamic> map) {
    return FilterableProperty(
      supportedValues: ((map['supportedValues'] as List).cast<String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

