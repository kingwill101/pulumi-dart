// ignore_for_file: unused_element, unnecessary_cast


/// The aggregation expression to be used in the report.
class ReportAggregation {
  /// The name of the aggregation function to use.
  final String function;
  /// The name of the column to aggregate.
  final String name;

  /// Creates a new [ReportAggregation].
  /// [function] The name of the aggregation function to use.
  /// [name] The name of the column to aggregate.
  ReportAggregation({
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
      function: map['function'] as String,
      name: map['name'] as String,
    );
  }
}

