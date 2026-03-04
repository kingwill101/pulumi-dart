// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_open_table_format_input_iceberg_input.dart';

class CatalogTableOpenTableFormatInput {
  /// Configuration block for iceberg table config. See `iceberg_input` below.
  final pulumi.Input<CatalogTableOpenTableFormatInputIcebergInput> icebergInput;

  /// Creates a new [CatalogTableOpenTableFormatInput].
  /// [icebergInput] Configuration block for iceberg table config. See `iceberg_input` below.
  CatalogTableOpenTableFormatInput({required this.icebergInput});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'icebergInput':
          pulumi.Input.mapInputValue<
            CatalogTableOpenTableFormatInputIcebergInput,
            Map<String, dynamic>
          >(icebergInput, (value) => value.toMap()),
    };
  }

  factory CatalogTableOpenTableFormatInput.fromMap(Map<String, dynamic> map) {
    return CatalogTableOpenTableFormatInput(
      icebergInput: pulumi.Input.fromValue(
        CatalogTableOpenTableFormatInputIcebergInput.fromMap(
          (map['icebergInput']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
