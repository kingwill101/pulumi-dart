// ignore_for_file: unused_element, unnecessary_cast

class TriggerPredicateCondition {
  /// The condition crawl state. Currently, the values supported are `RUNNING`, `SUCCEEDED`, `CANCELLED`, and `FAILED`. If this is specified, <span pulumi-lang-nodejs="`crawlerName`" pulumi-lang-dotnet="`CrawlerName`" pulumi-lang-go="`crawlerName`" pulumi-lang-python="`crawler_name`" pulumi-lang-yaml="`crawlerName`" pulumi-lang-java="`crawlerName`">`crawler_name`</span> must also be specified. Conflicts with <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span>.
  final String? crawlState;

  /// The name of the crawler to watch. If this is specified, <span pulumi-lang-nodejs="`crawlState`" pulumi-lang-dotnet="`CrawlState`" pulumi-lang-go="`crawlState`" pulumi-lang-python="`crawl_state`" pulumi-lang-yaml="`crawlState`" pulumi-lang-java="`crawlState`">`crawl_state`</span> must also be specified. Conflicts with <span pulumi-lang-nodejs="`jobName`" pulumi-lang-dotnet="`JobName`" pulumi-lang-go="`jobName`" pulumi-lang-python="`job_name`" pulumi-lang-yaml="`jobName`" pulumi-lang-java="`jobName`">`job_name`</span>.
  final String? crawlerName;

  /// The name of the job to watch. If this is specified, <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> must also be specified. Conflicts with <span pulumi-lang-nodejs="`crawlerName`" pulumi-lang-dotnet="`CrawlerName`" pulumi-lang-go="`crawlerName`" pulumi-lang-python="`crawler_name`" pulumi-lang-yaml="`crawlerName`" pulumi-lang-java="`crawlerName`">`crawler_name`</span>.
  final String? jobName;

  /// A logical operator. Defaults to `EQUALS`.
  final String? logicalOperator;

  /// The condition job state. Currently, the values supported are `SUCCEEDED`, `STOPPED`, `TIMEOUT` and `FAILED`. If this is specified, <span pulumi-lang-nodejs="`jobName`" pulumi-lang-dotnet="`JobName`" pulumi-lang-go="`jobName`" pulumi-lang-python="`job_name`" pulumi-lang-yaml="`jobName`" pulumi-lang-java="`jobName`">`job_name`</span> must also be specified. Conflicts with <span pulumi-lang-nodejs="`crawlerState`" pulumi-lang-dotnet="`CrawlerState`" pulumi-lang-go="`crawlerState`" pulumi-lang-python="`crawler_state`" pulumi-lang-yaml="`crawlerState`" pulumi-lang-java="`crawlerState`">`crawler_state`</span>.
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
