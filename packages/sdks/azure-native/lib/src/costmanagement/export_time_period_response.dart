// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The date range for data in the export. This should only be specified with timeFrame set to 'Custom'. The maximum date range is 3 months.
class ExportTimePeriodResponse {
  /// The start date for export data.
  final pulumi.Input<String> from;
  /// The end date for export data.
  final pulumi.Input<String> to;

  /// Creates a new [ExportTimePeriodResponse].
  /// [from] The start date for export data.
  /// [to] The end date for export data.
  const ExportTimePeriodResponse({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory ExportTimePeriodResponse.fromMap(Map<String, dynamic> map) {
    return ExportTimePeriodResponse(
      from: pulumi.Input.fromValue(map['from'] as String),
      to: pulumi.Input.fromValue(map['to'] as String),
    );
  }
}

