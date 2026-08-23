// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_open_table_format_input_iceberg_input_iceberg_table_input.dart';

class CatalogTableOpenTableFormatInputIcebergInput {
  /// Configuration parameters, including table properties and metadata specifications. See `icebergTableInput` below.
  final pulumi.Input<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInput>? icebergTableInput;
  /// Required metadata operation. Can only be set to CREATE.
  final pulumi.Input<String> metadataOperation;
  /// Table version for the Iceberg table. Defaults to 2.
  final pulumi.Input<String>? version;

  /// Creates a new [CatalogTableOpenTableFormatInputIcebergInput].
  /// [icebergTableInput] Configuration parameters, including table properties and metadata specifications. See `icebergTableInput` below.
  /// [metadataOperation] Required metadata operation. Can only be set to CREATE.
  /// [version] Table version for the Iceberg table. Defaults to 2.
  const CatalogTableOpenTableFormatInputIcebergInput({
    this.icebergTableInput,
    required this.metadataOperation,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'icebergTableInput': ?pulumi.Input.mapOptionalInputValue<CatalogTableOpenTableFormatInputIcebergInputIcebergTableInput, Map<String, dynamic>>(icebergTableInput, (value) => value.toMap()),
      'metadataOperation': metadataOperation,
      'version': ?version,
    };
  }

  factory CatalogTableOpenTableFormatInputIcebergInput.fromMap(Map<String, dynamic> map) {
    return CatalogTableOpenTableFormatInputIcebergInput(
      icebergTableInput: (() { final guardedValue = map['icebergTableInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogTableOpenTableFormatInputIcebergInputIcebergTableInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metadataOperation: pulumi.Input.fromValue(map['metadataOperation'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
