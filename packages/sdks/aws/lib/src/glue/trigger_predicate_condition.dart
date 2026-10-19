// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerPredicateCondition {
  /// Condition crawl state. Currently, the values supported are `RUNNING`, `SUCCEEDED`, `CANCELLED`, and `FAILED`. If this is specified, `crawlerName` must also be specified. Conflicts with `state`.
  final pulumi.Input<String?>? crawlState;
  /// Name of the crawler to watch. If this is specified, `crawlState` must also be specified. Conflicts with `jobName`.
  final pulumi.Input<String?>? crawlerName;
  /// Name of the job to watch. If this is specified, `state` must also be specified. Conflicts with `crawlerName`.
  final pulumi.Input<String?>? jobName;
  /// Logical operator. Defaults to `EQUALS`.
  final pulumi.Input<String?>? logicalOperator;
  /// Condition job state. Currently, the values supported are `SUCCEEDED`, `STOPPED`, `TIMEOUT` and `FAILED`. If this is specified, `jobName` must also be specified. Conflicts with `crawlerState`.
  final pulumi.Input<String?>? state;

  /// Creates a new [TriggerPredicateCondition].
  /// [crawlState] Condition crawl state. Currently, the values supported are `RUNNING`, `SUCCEEDED`, `CANCELLED`, and `FAILED`. If this is specified, `crawlerName` must also be specified. Conflicts with `state`.
  /// [crawlerName] Name of the crawler to watch. If this is specified, `crawlState` must also be specified. Conflicts with `jobName`.
  /// [jobName] Name of the job to watch. If this is specified, `state` must also be specified. Conflicts with `crawlerName`.
  /// [logicalOperator] Logical operator. Defaults to `EQUALS`.
  /// [state] Condition job state. Currently, the values supported are `SUCCEEDED`, `STOPPED`, `TIMEOUT` and `FAILED`. If this is specified, `jobName` must also be specified. Conflicts with `crawlerState`.
  const TriggerPredicateCondition({
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
      crawlState: (() { final guardedValue = map['crawlState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crawlerName: (() { final guardedValue = map['crawlerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobName: (() { final guardedValue = map['jobName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logicalOperator: (() { final guardedValue = map['logicalOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
