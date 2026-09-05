// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecField {
  /// Unique identifier assigned to this partition field within the Iceberg table's partition specification.
  final pulumi.Input<int?>? fieldId;
  /// Name of the table. For Hive compatibility, this must be entirely lowercase.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;
  final pulumi.Input<int> sourceId;
  final pulumi.Input<String> transform;

  /// Creates a new [CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecField].
  /// [fieldId] Unique identifier assigned to this partition field within the Iceberg table's partition specification.
  /// [name] Name of the table. For Hive compatibility, this must be entirely lowercase.
  /// [sourceId] Required.
  /// [transform] Required.
  const CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecField({
    this.fieldId,
    required this.name,
    required this.sourceId,
    required this.transform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldId': ?fieldId,
      'name': name,
      'sourceId': sourceId,
      'transform': transform,
    };
  }

  factory CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecField.fromMap(Map<String, dynamic> map) {
    return CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecField(
      fieldId: (() { final guardedValue = map['fieldId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      sourceId: pulumi.Input.fromValue((map['sourceId'] as num).toInt()),
      transform: pulumi.Input.fromValue(map['transform'] as String),
    );
  }
}
