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

  /// Creates a new [TriggerPredicateCondition].
  /// [crawlState] The condition crawl state. Currently, the values supported are `RUNNING`, `SUCCEEDED`, `CANCELLED`, and `FAILED`. If this is specified, `crawler_name` must also be specified. Conflicts with `state`.
  /// [crawlerName] The name of the crawler to watch. If this is specified, `crawl_state` must also be specified. Conflicts with `job_name`.
  /// [jobName] The name of the job to watch. If this is specified, `state` must also be specified. Conflicts with `crawler_name`.
  /// [logicalOperator] A logical operator. Defaults to `EQUALS`.
  /// [state] The condition job state. Currently, the values supported are `SUCCEEDED`, `STOPPED`, `TIMEOUT` and `FAILED`. If this is specified, `job_name` must also be specified. Conflicts with `crawler_state`.
  TriggerPredicateCondition({
    this.crawlState,
    this.crawlerName,
    this.jobName,
    this.logicalOperator,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crawlState': ?crawlState,
      'crawlerName': ?crawlerName,
      'jobName': ?jobName,
      'logicalOperator': ?logicalOperator,
      'state': ?state,
    };
  }

  factory TriggerPredicateCondition.fromMap(Map<String, dynamic> map) {
    return TriggerPredicateCondition(
      crawlState: map['crawlState'] == null ? null : map['crawlState'] as String,
      crawlerName: map['crawlerName'] == null ? null : map['crawlerName'] as String,
      jobName: map['jobName'] == null ? null : map['jobName'] as String,
      logicalOperator: map['logicalOperator'] == null ? null : map['logicalOperator'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

