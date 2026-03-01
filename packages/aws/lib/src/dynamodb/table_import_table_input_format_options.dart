// ignore_for_file: unused_element, unnecessary_cast

import 'table_import_table_input_format_options_csv.dart';

class TableImportTableInputFormatOptions {
  /// This block contains the processing options for the CSV file being imported:
  final TableImportTableInputFormatOptionsCsv? csv;

  /// Creates a new [TableImportTableInputFormatOptions].
  /// [csv] This block contains the processing options for the CSV file being imported:
  TableImportTableInputFormatOptions({this.csv});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'csv': ?csv == null ? null : csv!.toMap()};
  }

  factory TableImportTableInputFormatOptions.fromMap(Map<String, dynamic> map) {
    return TableImportTableInputFormatOptions(
      csv: map['csv'] == null
          ? null
          : TableImportTableInputFormatOptionsCsv.fromMap(
              (map['csv'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
