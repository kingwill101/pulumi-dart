// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersResourceTag {
  final pulumi.Input<String> comparison;

  /// The key of the map filter. For example, for `ResourceTags`, `Key` identifies the name of the tag. For `UserDefinedFields`, `Key` is the name of the field.
  final pulumi.Input<String> key;
  final pulumi.Input<String> value;

  /// Creates a new [InsightFiltersResourceTag].
  /// [comparison] Required.
  /// [key] The key of the map filter. For example, for `ResourceTags`, `Key` identifies the name of the tag. For `UserDefinedFields`, `Key` is the name of the field.
  /// [value] Required.
  InsightFiltersResourceTag({
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

  factory InsightFiltersResourceTag.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceTag(
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
