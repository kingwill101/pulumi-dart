// ignore_for_file: unused_element, unnecessary_cast

class TriggerPredicateCondition {
  /// The condition crawl state. Currently, the values supported are `RUNNING`, `SUCCEEDED`, `CANCELLED`, and `FAILED`. If this is specified, `crawler_name` must also be specified. Conflicts with `state`.
  final String? crawlState;

  /// The name of the crawler to watch. If this is specified, `crawl_state` must also be specified. Conflicts with `job_name`.
  final String? crawlerName;

  /// The name of the job to watch. If this is specified, `state` must also be specified. Conflicts with `crawler_name`.
  final String? jobName;

  /// A logical operator. Defaults to `EQUALS`.
  final String? logicalOperator;

  /// The condition job state. Currently, the values supported are `SUCCEEDED`, `STOPPED`, `TIMEOUT` and `FAILED`. If this is specified, `job_name` must also be specified. Conflicts with `crawler_state`.
  final String? state;

  TriggerPredicateCondition({
    this.crawlState,
    this.crawlerName,
    this.jobName,
    this.logicalOperator,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final crawlStateValue = crawlState;
    if (crawlStateValue != null) {
      map['crawlState'] = crawlStateValue;
    }
    final crawlerNameValue = crawlerName;
    if (crawlerNameValue != null) {
      map['crawlerName'] = crawlerNameValue;
    }
    final jobNameValue = jobName;
    if (jobNameValue != null) {
      map['jobName'] = jobNameValue;
    }
    final logicalOperatorValue = logicalOperator;
    if (logicalOperatorValue != null) {
      map['logicalOperator'] = logicalOperatorValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory TriggerPredicateCondition.fromMap(Map<String, dynamic> map) {
    return TriggerPredicateCondition(
      crawlState:
          map['crawlState'] == null ? null : map['crawlState'] as String,
      crawlerName:
          map['crawlerName'] == null ? null : map['crawlerName'] as String,
      jobName: map['jobName'] == null ? null : map['jobName'] as String,
      logicalOperator: map['logicalOperator'] == null
          ? null
          : map['logicalOperator'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
