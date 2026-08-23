// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerPredicateCondition {
  /// The condition crawl state. Currently, the values supported are `RUNNING`, `SUCCEEDED`, `CANCELLED`, and `FAILED`. If this is specified, `crawlerName` must also be specified. Conflicts with `state`.
  final pulumi.Input<String>? crawlState;
  /// The name of the crawler to watch. If this is specified, `crawlState` must also be specified. Conflicts with `jobName`.
  final pulumi.Input<String>? crawlerName;
  /// The name of the job to watch. If this is specified, `state` must also be specified. Conflicts with `crawlerName`.
  final pulumi.Input<String>? jobName;
  /// A logical operator. Defaults to `EQUALS`.
  final pulumi.Input<String>? logicalOperator;
  /// The condition job state. Currently, the values supported are `SUCCEEDED`, `STOPPED`, `TIMEOUT` and `FAILED`. If this is specified, `jobName` must also be specified. Conflicts with `crawlerState`.
  final pulumi.Input<String>? state;

  /// Creates a new [TriggerPredicateCondition].
  /// [crawlState] The condition crawl state. Currently, the values supported are `RUNNING`, `SUCCEEDED`, `CANCELLED`, and `FAILED`. If this is specified, `crawlerName` must also be specified. Conflicts with `state`.
  /// [crawlerName] The name of the crawler to watch. If this is specified, `crawlState` must also be specified. Conflicts with `jobName`.
  /// [jobName] The name of the job to watch. If this is specified, `state` must also be specified. Conflicts with `crawlerName`.
  /// [logicalOperator] A logical operator. Defaults to `EQUALS`.
  /// [state] The condition job state. Currently, the values supported are `SUCCEEDED`, `STOPPED`, `TIMEOUT` and `FAILED`. If this is specified, `jobName` must also be specified. Conflicts with `crawlerState`.
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
