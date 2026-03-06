// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'csv_response.dart';

/// Definition of InputFormatOptions
class InputFormatOptionsResponse {
  /// The options for imported source files in CSV format. The values are Delimiter and HeaderList. The options for imported source files in CSV format. The values are Delimiter and HeaderList.
  final pulumi.Input<CsvResponse>? csv;

  /// Creates a new [InputFormatOptionsResponse].
  /// [csv] The options for imported source files in CSV format. The values are Delimiter and HeaderList. The options for imported source files in CSV format. The values are Delimiter and HeaderList.
  const InputFormatOptionsResponse({
    this.csv,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csv': ?pulumi.Input.mapOptionalInputValue<CsvResponse, Map<String, dynamic>>(csv, (value) => value.toMap()),
    };
  }

  factory InputFormatOptionsResponse.fromMap(Map<String, dynamic> map) {
    return InputFormatOptionsResponse(
      csv: (() { final guardedValue = map['csv']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CsvResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

