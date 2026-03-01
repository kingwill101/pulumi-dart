// ignore_for_file: unused_element, unnecessary_cast

import 'csv.dart';

/// Definition of InputFormatOptions
class InputFormatOptions {
  /// The options for imported source files in CSV format. The values are Delimiter and HeaderList. The options for imported source files in CSV format. The values are Delimiter and HeaderList.
  final Csv? csv;

  /// Creates a new [InputFormatOptions].
  /// [csv] The options for imported source files in CSV format. The values are Delimiter and HeaderList. The options for imported source files in CSV format. The values are Delimiter and HeaderList.
  InputFormatOptions({
    this.csv,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csv': ?csv == null ? null : csv!.toMap(),
    };
  }

  factory InputFormatOptions.fromMap(Map<String, dynamic> map) {
    return InputFormatOptions(
      csv: map['csv'] == null ? null : Csv.fromMap((map['csv'] as Map).cast<String, dynamic>()),
    );
  }
}

