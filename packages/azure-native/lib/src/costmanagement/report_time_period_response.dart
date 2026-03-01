// ignore_for_file: unused_element, unnecessary_cast


/// The start and end date for pulling data for the report.
class ReportTimePeriodResponse {
  /// The start date to pull data from.
  final String from;
  /// The end date to pull data to.
  final String to;

  /// Creates a new [ReportTimePeriodResponse].
  /// [from] The start date to pull data from.
  /// [to] The end date to pull data to.
  ReportTimePeriodResponse({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory ReportTimePeriodResponse.fromMap(Map<String, dynamic> map) {
    return ReportTimePeriodResponse(
      from: map['from'] as String,
      to: map['to'] as String,
    );
  }
}

