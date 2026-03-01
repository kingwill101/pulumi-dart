// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scheduled_query_rules_log_criteria_dimension.dart';

class GetScheduledQueryRulesLogCriteria {
  /// A `dimension` block as defined below.
  final List<GetScheduledQueryRulesLogCriteriaDimension> dimensions;
  /// Name of the metric.
  final String metricName;

  /// Creates a new [GetScheduledQueryRulesLogCriteria].
  /// [dimensions] A `dimension` block as defined below.
  /// [metricName] Name of the metric.
  GetScheduledQueryRulesLogCriteria({
    required this.dimensions,
    required this.metricName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': pulumi.Input.encodeList<GetScheduledQueryRulesLogCriteriaDimension, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'metricName': metricName,
    };
  }

  factory GetScheduledQueryRulesLogCriteria.fromMap(Map<String, dynamic> map) {
    return GetScheduledQueryRulesLogCriteria(
      dimensions: pulumi.Input.decodeList<GetScheduledQueryRulesLogCriteriaDimension>(map['dimensions'], (value) => GetScheduledQueryRulesLogCriteriaDimension.fromMap((value as Map).cast<String, dynamic>())),
      metricName: map['metricName'] as String,
    );
  }
}

