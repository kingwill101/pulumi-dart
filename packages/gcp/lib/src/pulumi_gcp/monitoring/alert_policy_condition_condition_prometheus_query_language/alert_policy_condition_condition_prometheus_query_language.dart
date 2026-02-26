// ignore_for_file: unused_element, unnecessary_cast

class AlertPolicyConditionConditionPrometheusQueryLanguage {
  /// The alerting rule name of this alert in the corresponding Prometheus
  /// configuration file.
  /// Some external tools may require this field to be populated correctly
  /// in order to refer to the original Prometheus configuration file.
  /// The rule group name and the alert name are necessary to update the
  /// relevant AlertPolicies in case the definition of the rule group changes
  /// in the future.
  /// This field is optional. If this field is not empty, then it must be a
  /// valid Prometheus label name.
  final String? alertRule;
  final bool? disableMetricValidation;

  /// Alerts are considered firing once their PromQL expression evaluated
  /// to be "true" for this long. Alerts whose PromQL expression was not
  /// evaluated to be "true" for long enough are considered pending. The
  /// default value is zero. Must be zero or positive.
  final String? duration;

  /// How often this rule should be evaluated. Must be a positive multiple
  /// of 30 seconds or missing. The default value is 30 seconds. If this
  /// PrometheusQueryLanguageCondition was generated from a Prometheus
  /// alerting rule, then this value should be taken from the enclosing
  /// rule group.
  final String? evaluationInterval;

  /// Labels to add to or overwrite in the PromQL query result. Label names
  /// must be valid.
  /// Label values can be templatized by using variables. The only available
  /// variable names are the names of the labels in the PromQL result,
  /// although label names beginning with \_\_ (two "\_") are reserved for
  /// internal use. "labels" may be empty. This field is intended to be used
  /// for organizing and identifying the AlertPolicy.
  final Map<String, String>? labels;

  /// The PromQL expression to evaluate. Every evaluation cycle this
  /// expression is evaluated at the current time, and all resultant time
  /// series become pending/firing alerts. This field must not be empty.
  final String query;

  /// The rule group name of this alert in the corresponding Prometheus
  /// configuration file.
  /// Some external tools may require this field to be populated correctly
  /// in order to refer to the original Prometheus configuration file.
  /// The rule group name and the alert name are necessary to update the
  /// relevant AlertPolicies in case the definition of the rule group changes
  /// in the future. This field is optional.
  final String? ruleGroup;

  AlertPolicyConditionConditionPrometheusQueryLanguage({
    this.alertRule,
    this.disableMetricValidation,
    this.duration,
    this.evaluationInterval,
    this.labels,
    required this.query,
    this.ruleGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alertRuleValue = alertRule;
    if (alertRuleValue != null) {
      map['alertRule'] = alertRuleValue;
    }
    final disableMetricValidationValue = disableMetricValidation;
    if (disableMetricValidationValue != null) {
      map['disableMetricValidation'] = disableMetricValidationValue;
    }
    final durationValue = duration;
    if (durationValue != null) {
      map['duration'] = durationValue;
    }
    final evaluationIntervalValue = evaluationInterval;
    if (evaluationIntervalValue != null) {
      map['evaluationInterval'] = evaluationIntervalValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['query'] = query;
    final ruleGroupValue = ruleGroup;
    if (ruleGroupValue != null) {
      map['ruleGroup'] = ruleGroupValue;
    }
    return map;
  }

  factory AlertPolicyConditionConditionPrometheusQueryLanguage.fromMap(
      Map<String, dynamic> map) {
    return AlertPolicyConditionConditionPrometheusQueryLanguage(
      alertRule: map['alertRule'] == null ? null : map['alertRule'] as String,
      disableMetricValidation: map['disableMetricValidation'] == null
          ? null
          : map['disableMetricValidation'] as bool,
      duration: map['duration'] == null ? null : map['duration'] as String,
      evaluationInterval: map['evaluationInterval'] == null
          ? null
          : map['evaluationInterval'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      query: map['query'] as String,
      ruleGroup: map['ruleGroup'] == null ? null : map['ruleGroup'] as String,
    );
  }
}
