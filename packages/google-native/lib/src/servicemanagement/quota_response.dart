// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_rule_response.dart';
import 'quota_limit_response.dart';

/// Quota configuration helps to achieve fairness and budgeting in service usage. The metric based quota configuration works this way: - The service configuration defines a set of metrics. - For API calls, the quota.metric_rules maps methods to metrics with corresponding costs. - The quota.limits defines limits on the metrics, which will be used for quota checks at runtime. An example quota configuration in yaml format: quota: limits: - name: apiWriteQpsPerProject metric: library.googleapis.com/write_calls unit: "1/min/{project}" # rate limit for consumer projects values: STANDARD: 10000 (The metric rules bind all methods to the read_calls metric, except for the UpdateBook and DeleteBook methods. These two methods are mapped to the write_calls metric, with the UpdateBook method consuming at twice rate as the DeleteBook method.) metric_rules: - selector: "*" metric_costs: library.googleapis.com/read_calls: 1 - selector: google.example.library.v1.LibraryService.UpdateBook metric_costs: library.googleapis.com/write_calls: 2 - selector: google.example.library.v1.LibraryService.DeleteBook metric_costs: library.googleapis.com/write_calls: 1 Corresponding Metric definition: metrics: - name: library.googleapis.com/read_calls display_name: Read requests metric_kind: DELTA value_type: INT64 - name: library.googleapis.com/write_calls display_name: Write requests metric_kind: DELTA value_type: INT64
class QuotaResponse {
  /// List of QuotaLimit definitions for the service.
  final List<QuotaLimitResponse> limits;

  /// List of MetricRule definitions, each one mapping a selected method to one or more metrics.
  final List<MetricRuleResponse> metricRules;

  /// Creates a new [QuotaResponse].
  /// [limits] List of QuotaLimit definitions for the service.
  /// [metricRules] List of MetricRule definitions, each one mapping a selected method to one or more metrics.
  QuotaResponse({required this.limits, required this.metricRules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits':
          pulumi.Input.encodeList<QuotaLimitResponse, Map<String, dynamic>>(
            limits,
            (value) => value.toMap(),
          ),
      'metricRules':
          pulumi.Input.encodeList<MetricRuleResponse, Map<String, dynamic>>(
            metricRules,
            (value) => value.toMap(),
          ),
    };
  }

  factory QuotaResponse.fromMap(Map<String, dynamic> map) {
    return QuotaResponse(
      limits: pulumi.Input.decodeList<QuotaLimitResponse>(
        map['limits'],
        (value) =>
            QuotaLimitResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
      metricRules: pulumi.Input.decodeList<MetricRuleResponse>(
        map['metricRules'],
        (value) =>
            MetricRuleResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
