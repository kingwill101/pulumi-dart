// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The start and end date for pulling data for the report.
class ReportTimePeriodResponse {
  /// The start date to pull data from.
  final pulumi.Input<String> from;
  /// The end date to pull data to.
  final pulumi.Input<String> to;

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
      from: pulumi.Input.fromValue(map['from'] as String),
      to: pulumi.Input.fromValue(map['to'] as String),
    );
  }
}

