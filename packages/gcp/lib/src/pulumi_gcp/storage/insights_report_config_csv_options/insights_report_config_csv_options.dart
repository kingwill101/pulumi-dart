// ignore_for_file: unused_element, unnecessary_cast

class InsightsReportConfigCsvOptions {
  /// The delimiter used to separate the fields in the inventory report CSV file.
  final String? delimiter;

  /// The boolean that indicates whether or not headers are included in the inventory report CSV file.
  final bool? headerRequired;

  /// The character used to separate the records in the inventory report CSV file.
  final String? recordSeparator;

  InsightsReportConfigCsvOptions({
    this.delimiter,
    this.headerRequired,
    this.recordSeparator,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final delimiterValue = delimiter;
    if (delimiterValue != null) {
      map['delimiter'] = delimiterValue;
    }
    final headerRequiredValue = headerRequired;
    if (headerRequiredValue != null) {
      map['headerRequired'] = headerRequiredValue;
    }
    final recordSeparatorValue = recordSeparator;
    if (recordSeparatorValue != null) {
      map['recordSeparator'] = recordSeparatorValue;
    }
    return map;
  }

  factory InsightsReportConfigCsvOptions.fromMap(Map<String, dynamic> map) {
    return InsightsReportConfigCsvOptions(
      delimiter: map['delimiter'] == null ? null : map['delimiter'] as String,
      headerRequired:
          map['headerRequired'] == null ? null : map['headerRequired'] as bool,
      recordSeparator: map['recordSeparator'] == null
          ? null
          : map['recordSeparator'] as String,
    );
  }
}
