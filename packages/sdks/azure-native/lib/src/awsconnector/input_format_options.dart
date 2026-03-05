// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'csv.dart';

/// Definition of InputFormatOptions
class InputFormatOptions {
  /// The options for imported source files in CSV format. The values are Delimiter and HeaderList. The options for imported source files in CSV format. The values are Delimiter and HeaderList.
  final pulumi.Input<Csv>? csv;

  /// Creates a new [InputFormatOptions].
  /// [csv] The options for imported source files in CSV format. The values are Delimiter and HeaderList. The options for imported source files in CSV format. The values are Delimiter and HeaderList.
  InputFormatOptions({
    this.csv,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csv': ?pulumi.Input.mapOptionalInputValue<Csv, Map<String, dynamic>>(csv, (value) => value.toMap()),
    };
  }

  factory InputFormatOptions.fromMap(Map<String, dynamic> map) {
    return InputFormatOptions(
      csv: (() { final guardedValue = map['csv']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Csv.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

