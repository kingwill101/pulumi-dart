// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_target_dead_letter_queue.dart';
import 'rule_target_param_list.dart';

class RuleTarget {
  /// The dead letter queue. Events that are not processed or exceed the number of retries will be written to the dead letter. Support message service MNS and message queue RocketMQ. See `dead_letter_queue` below.
  final pulumi.Input<RuleTargetDeadLetterQueue>? deadLetterQueue;
  /// The endpoint of the event target.
  final pulumi.Input<String> endpoint;
  /// The parameters that are configured for the event target. See `param_list` below.
  final pulumi.Input<List<RuleTargetParamList>> paramLists;
  /// The retry policy that is used to push the event. Valid values:
  /// - `BACKOFF_RETRY`: Backoff retry. The request can be retried up to three times. The interval between two consecutive retries is a random value between 10 and 20 seconds.
  /// - `EXPONENTIAL_DECAY_RETRY`: Exponential decay retry. The request can be retried up to 176 times. The interval between two consecutive retries exponentially increases to 512 seconds, and the total retry time is one day. The specific retry intervals are 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 512, ..., and 512 seconds, including a maximum of one hundred and sixty-seven 512 seconds in total.
  final pulumi.Input<String>? pushRetryStrategy;
  /// The ID of the custom event target.
  final pulumi.Input<String> targetId;
  /// The type of the event target. Valid values: `acs.alikafka`, `acs.api.destination`, `acs.arms.loki`, `acs.datahub`, `acs.dingtalk`, `acs.eventbridge`, `acs.eventbridge.olap`, `acs.eventbus.SLSCloudLens`, `acs.fc.function`, `acs.fnf`, `acs.k8s`, `acs.mail`, `acs.mns.queue`, `acs.mns.topic`, `acs.openapi`, `acs.rabbitmq`, `acs.rds.mysql`, `acs.rocketmq`, `acs.sae`, `acs.sls`, `acs.sms`, `http`,`https` and `mysql`.
  /// **NOTE:** From version 1.208.1, `type` can be set to `acs.alikafka`, `acs.api.destination`, `acs.arms.loki`, `acs.datahub`, `acs.eventbridge.olap`, `acs.eventbus.SLSCloudLens`, `acs.fnf`, `acs.k8s`, `acs.openapi`, `acs.rds.mysql`, `acs.sae`, `acs.sls`, `mysql`.
  final pulumi.Input<String> type;

  /// Creates a new [RuleTarget].
  /// [deadLetterQueue] The dead letter queue. Events that are not processed or exceed the number of retries will be written to the dead letter. Support message service MNS and message queue RocketMQ. See `dead_letter_queue` below.
  /// [endpoint] The endpoint of the event target.
  /// [paramLists] The parameters that are configured for the event target. See `param_list` below.
  /// [pushRetryStrategy] The retry policy that is used to push the event. Valid values:
  /// [targetId] The ID of the custom event target.
  /// [type] The type of the event target. Valid values: `acs.alikafka`, `acs.api.destination`, `acs.arms.loki`, `acs.datahub`, `acs.dingtalk`, `acs.eventbridge`, `acs.eventbridge.olap`, `acs.eventbus.SLSCloudLens`, `acs.fc.function`, `acs.fnf`, `acs.k8s`, `acs.mail`, `acs.mns.queue`, `acs.mns.topic`, `acs.openapi`, `acs.rabbitmq`, `acs.rds.mysql`, `acs.rocketmq`, `acs.sae`, `acs.sls`, `acs.sms`, `http`,`https` and `mysql`.
  const RuleTarget({
    this.deadLetterQueue,
    required this.endpoint,
    required this.paramLists,
    this.pushRetryStrategy,
    required this.targetId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadLetterQueue': ?pulumi.Input.mapOptionalInputValue<RuleTargetDeadLetterQueue, Map<String, dynamic>>(deadLetterQueue, (value) => value.toMap()),
      'endpoint': endpoint,
      'paramLists': pulumi.Input.mapInputValue<List<RuleTargetParamList>, List<Map<String, dynamic>>>(paramLists, (value) => pulumi.Input.encodeList<RuleTargetParamList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pushRetryStrategy': ?pushRetryStrategy,
      'targetId': targetId,
      'type': type,
    };
  }

  factory RuleTarget.fromMap(Map<String, dynamic> map) {
    return RuleTarget(
      deadLetterQueue: (() { final guardedValue = map['deadLetterQueue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleTargetDeadLetterQueue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      paramLists: pulumi.Input.fromValue(pulumi.Input.decodeList<RuleTargetParamList>(map['paramLists']!, (value) => RuleTargetParamList.fromMap((value as Map).cast<String, dynamic>()))),
      pushRetryStrategy: (() { final guardedValue = map['pushRetryStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

