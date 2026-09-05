// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_import_table_input_format_options_csv.dart';

class TableImportTableInputFormatOptions {
  /// This block contains the processing options for the CSV file being imported:
  final pulumi.Input<TableImportTableInputFormatOptionsCsv?>? csv;

  /// Creates a new [TableImportTableInputFormatOptions].
  /// [csv] This block contains the processing options for the CSV file being imported:
  const TableImportTableInputFormatOptions({
    this.csv,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csv': ?pulumi.Input.mapOptionalInputValue<TableImportTableInputFormatOptionsCsv, Map<String, dynamic>>(csv, (value) => value.toMap()),
    };
  }

  factory TableImportTableInputFormatOptions.fromMap(Map<String, dynamic> map) {
    return TableImportTableInputFormatOptions(
      csv: (() { final guardedValue = map['csv']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableImportTableInputFormatOptionsCsv.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
