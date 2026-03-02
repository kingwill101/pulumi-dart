// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Csv
class CsvResponse {
  /// The delimiter used for separating items in the CSV file being imported.
  final pulumi.Input<String>? delimiter;
  /// List of the headers used to specify a common header for all source CSV files being imported. If this field is specified then the first line of each CSV file is treated as data instead of the header. If this field is not specified the the first line of each CSV file is treated as the header.
  final pulumi.Input<List<String>>? headerList;

  /// Creates a new [CsvResponse].
  /// [delimiter] The delimiter used for separating items in the CSV file being imported.
  /// [headerList] List of the headers used to specify a common header for all source CSV files being imported. If this field is specified then the first line of each CSV file is treated as data instead of the header. If this field is not specified the the first line of each CSV file is treated as the header.
  CsvResponse({
    this.delimiter,
    this.headerList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delimiter': ?delimiter,
      'headerList': ?headerList,
    };
  }

  factory CsvResponse.fromMap(Map<String, dynamic> map) {
    return CsvResponse(
      delimiter: map['delimiter'] == null ? null : (map['delimiter'] as String).input(),
      headerList: map['headerList'] == null ? null : ((map['headerList'] as List).cast<String>()).input(),
    );
  }
}

