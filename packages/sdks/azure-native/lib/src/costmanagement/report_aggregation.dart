// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The aggregation expression to be used in the report.
class ReportAggregation {
  /// The name of the aggregation function to use.
  final pulumi.Input<String> function;
  /// The name of the column to aggregate.
  final pulumi.Input<String> name;

  /// Creates a new [ReportAggregation].
  /// [function] The name of the aggregation function to use.
  /// [name] The name of the column to aggregate.
  const ReportAggregation({
    required this.function,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'function': function,
      'name': name,
    };
  }

  factory ReportAggregation.fromMap(Map<String, dynamic> map) {
    return ReportAggregation(
      function: pulumi.Input.fromValue(map['function'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

