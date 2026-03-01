// ignore_for_file: unused_element, unnecessary_cast


/// The start and end date for pulling data for the report.
class ReportConfigTimePeriodResponse {
  /// The start date to pull data from.
  final String from;
  /// The end date to pull data to.
  final String to;

  /// Creates a new [ReportConfigTimePeriodResponse].
  /// [from] The start date to pull data from.
  /// [to] The end date to pull data to.
  ReportConfigTimePeriodResponse({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory ReportConfigTimePeriodResponse.fromMap(Map<String, dynamic> map) {
    return ReportConfigTimePeriodResponse(
      from: map['from'] as String,
      to: map['to'] as String,
    );
  }
}

