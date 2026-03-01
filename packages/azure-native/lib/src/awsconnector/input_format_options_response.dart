// ignore_for_file: unused_element, unnecessary_cast

import 'csv_response.dart';

/// Definition of InputFormatOptions
class InputFormatOptionsResponse {
  /// The options for imported source files in CSV format. The values are Delimiter and HeaderList. The options for imported source files in CSV format. The values are Delimiter and HeaderList.
  final CsvResponse? csv;

  /// Creates a new [InputFormatOptionsResponse].
  /// [csv] The options for imported source files in CSV format. The values are Delimiter and HeaderList. The options for imported source files in CSV format. The values are Delimiter and HeaderList.
  InputFormatOptionsResponse({
    this.csv,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csv': ?csv == null ? null : csv!.toMap(),
    };
  }

  factory InputFormatOptionsResponse.fromMap(Map<String, dynamic> map) {
    return InputFormatOptionsResponse(
      csv: map['csv'] == null ? null : CsvResponse.fromMap((map['csv'] as Map).cast<String, dynamic>()),
    );
  }
}

