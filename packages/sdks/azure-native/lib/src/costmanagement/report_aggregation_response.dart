// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The aggregation expression to be used in the report.
class ReportAggregationResponse {
  /// The name of the aggregation function to use.
  final pulumi.Input<String> function;

  /// The name of the column to aggregate.
  final pulumi.Input<String> name;

  /// Creates a new [ReportAggregationResponse].
  /// [function] The name of the aggregation function to use.
  /// [name] The name of the column to aggregate.
  ReportAggregationResponse({required this.function, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'function': function, 'name': name};
  }

  factory ReportAggregationResponse.fromMap(Map<String, dynamic> map) {
    return ReportAggregationResponse(
      function: pulumi.Input.fromValue(map['function'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
