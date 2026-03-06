// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableImportTableInputFormatOptionsCsv {
  /// The delimiter used for separating items in the CSV file being imported.
  final pulumi.Input<String>? delimiter;
  /// List of the headers used to specify a common header for all source CSV files being imported.
  final pulumi.Input<List<String>>? headerLists;

  /// Creates a new [TableImportTableInputFormatOptionsCsv].
  /// [delimiter] The delimiter used for separating items in the CSV file being imported.
  /// [headerLists] List of the headers used to specify a common header for all source CSV files being imported.
  const TableImportTableInputFormatOptionsCsv({
    this.delimiter,
    this.headerLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delimiter': ?delimiter,
      'headerLists': ?headerLists,
    };
  }

  factory TableImportTableInputFormatOptionsCsv.fromMap(Map<String, dynamic> map) {
    return TableImportTableInputFormatOptionsCsv(
      delimiter: (() { final guardedValue = map['delimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerLists: (() { final guardedValue = map['headerLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

