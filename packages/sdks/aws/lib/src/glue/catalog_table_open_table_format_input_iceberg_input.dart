// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogTableOpenTableFormatInputIcebergInput {
  /// A required metadata operation. Can only be set to CREATE.
  final pulumi.Input<String> metadataOperation;
  /// The table version for the Iceberg table. Defaults to 2.
  final pulumi.Input<String>? version;

  /// Creates a new [CatalogTableOpenTableFormatInputIcebergInput].
  /// [metadataOperation] A required metadata operation. Can only be set to CREATE.
  /// [version] The table version for the Iceberg table. Defaults to 2.
  const CatalogTableOpenTableFormatInputIcebergInput({
    required this.metadataOperation,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataOperation': metadataOperation,
      'version': ?version,
    };
  }

  factory CatalogTableOpenTableFormatInputIcebergInput.fromMap(Map<String, dynamic> map) {
    return CatalogTableOpenTableFormatInputIcebergInput(
      metadataOperation: pulumi.Input.fromValue(map['metadataOperation'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

