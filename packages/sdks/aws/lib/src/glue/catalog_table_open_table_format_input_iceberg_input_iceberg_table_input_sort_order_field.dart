// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderField {
  /// Sort direction for this field. Valid values: `asc`, `desc`.
  final pulumi.Input<String> direction;
  /// Ordering behavior for null values in this field. Valid values: `nulls-first`, `nulls-last`.
  final pulumi.Input<String> nullOrder;
  final pulumi.Input<int> sourceId;
  final pulumi.Input<String> transform;

  /// Creates a new [CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderField].
  /// [direction] Sort direction for this field. Valid values: `asc`, `desc`.
  /// [nullOrder] Ordering behavior for null values in this field. Valid values: `nulls-first`, `nulls-last`.
  /// [sourceId] Required.
  /// [transform] Required.
  const CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderField({
    required this.direction,
    required this.nullOrder,
    required this.sourceId,
    required this.transform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'nullOrder': nullOrder,
      'sourceId': sourceId,
      'transform': transform,
    };
  }

  factory CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderField.fromMap(Map<String, dynamic> map) {
    return CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderField(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      nullOrder: pulumi.Input.fromValue(map['nullOrder'] as String),
      sourceId: pulumi.Input.fromValue(map['sourceId'] as int),
      transform: pulumi.Input.fromValue(map['transform'] as String),
    );
  }
}
