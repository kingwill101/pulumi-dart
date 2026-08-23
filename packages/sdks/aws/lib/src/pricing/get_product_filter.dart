// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProductFilter {
  /// Product attribute name that you want to filter on.
  final pulumi.Input<String> field;
  /// Product attribute value that you want to filter on.
  final pulumi.Input<String> value;

  /// Creates a new [GetProductFilter].
  /// [field] Product attribute name that you want to filter on.
  /// [value] Product attribute value that you want to filter on.
  const GetProductFilter({
    required this.field,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': field,
      'value': value,
    };
  }

  factory GetProductFilter.fromMap(Map<String, dynamic> map) {
    return GetProductFilter(
      field: pulumi.Input.fromValue(map['field'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
