// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersProductField {
  final pulumi.Input<String> comparison;
  /// The key of the map filter. For example, for `ResourceTags`, `Key` identifies the name of the tag. For `UserDefinedFields`, `Key` is the name of the field.
  final pulumi.Input<String> key;
  final pulumi.Input<String> value;

  /// Creates a new [InsightFiltersProductField].
  /// [comparison] Required.
  /// [key] The key of the map filter. For example, for `ResourceTags`, `Key` identifies the name of the tag. For `UserDefinedFields`, `Key` is the name of the field.
  /// [value] Required.
  InsightFiltersProductField({
    required this.comparison,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'key': key,
      'value': value,
    };
  }

  factory InsightFiltersProductField.fromMap(Map<String, dynamic> map) {
    return InsightFiltersProductField(
      comparison: (map['comparison'] as String).input(),
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

