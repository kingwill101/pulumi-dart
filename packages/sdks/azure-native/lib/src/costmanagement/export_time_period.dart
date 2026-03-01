// ignore_for_file: unused_element, unnecessary_cast


/// The date range for data in the export. This should only be specified with timeFrame set to 'Custom'. The maximum date range is 3 months.
class ExportTimePeriod {
  /// The start date for export data.
  final String from;
  /// The end date for export data.
  final String to;

  /// Creates a new [ExportTimePeriod].
  /// [from] The start date for export data.
  /// [to] The end date for export data.
  ExportTimePeriod({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory ExportTimePeriod.fromMap(Map<String, dynamic> map) {
    return ExportTimePeriod(
      from: map['from'] as String,
      to: map['to'] as String,
    );
  }
}

