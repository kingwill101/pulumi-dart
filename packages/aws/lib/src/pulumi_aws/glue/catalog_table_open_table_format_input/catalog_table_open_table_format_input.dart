// ignore_for_file: unused_element, unnecessary_cast

import '../catalog_table_open_table_format_input_iceberg_input/catalog_table_open_table_format_input_iceberg_input.dart';

class CatalogTableOpenTableFormatInput {
  /// Configuration block for iceberg table config. See <span pulumi-lang-nodejs="`icebergInput`" pulumi-lang-dotnet="`IcebergInput`" pulumi-lang-go="`icebergInput`" pulumi-lang-python="`iceberg_input`" pulumi-lang-yaml="`icebergInput`" pulumi-lang-java="`icebergInput`">`iceberg_input`</span> below.
  final CatalogTableOpenTableFormatInputIcebergInput icebergInput;

  CatalogTableOpenTableFormatInput({
    required this.icebergInput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['icebergInput'] = icebergInput.toMap();
    return map;
  }

  factory CatalogTableOpenTableFormatInput.fromMap(Map<String, dynamic> map) {
    return CatalogTableOpenTableFormatInput(
      icebergInput: CatalogTableOpenTableFormatInputIcebergInput.fromMap(
          (map['icebergInput'] as Map).cast<String, dynamic>()),
    );
  }
}
