// ignore_for_file: unused_element, unnecessary_cast


/// The start and end date for pulling data for the report.
class ReportConfigTimePeriod {
  /// The start date to pull data from.
  final String from;
  /// The end date to pull data to.
  final String to;

  /// Creates a new [ReportConfigTimePeriod].
  /// [from] The start date to pull data from.
  /// [to] The end date to pull data to.
  ReportConfigTimePeriod({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory ReportConfigTimePeriod.fromMap(Map<String, dynamic> map) {
    return ReportConfigTimePeriod(
      from: map['from'] as String,
      to: map['to'] as String,
    );
  }
}

