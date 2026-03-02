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
  TableImportTableInputFormatOptionsCsv({
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
      delimiter: map['delimiter'] == null ? null : ((map['delimiter'] as String).input()).input(),
      headerLists: map['headerLists'] == null ? null : (((map['headerLists'] as List).cast<String>()).input()).input(),
    );
  }
}

