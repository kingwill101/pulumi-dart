// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlarmTarget {
  /// The Alibaba Cloud Resource Name (ARN) of the resource. Simple Message Queue (formerly MNS) (SMQ), Auto Scaling, Simple Log Service, and Function Compute are supported:
  /// - SMQ: `acs:mns:{regionId}:{userId}:/{Resource type}/{Resource name}/message`. {regionId}: the region ID of the SMQ queue or topic. {userId}: the ID of the Alibaba Cloud account that owns the resource. {Resource type}: the type of the resource for which alerts are triggered. Valid values:queues, topics. {Resource name}: the resource name. If the resource type is queues, the resource name is the queue name. If the resource type is topics, the resource name is the topic name.
  /// - Auto Scaling: `acs:ess:{regionId}:{userId}:scalingGroupId/{Scaling group ID}:scalingRuleId/{Scaling rule ID}`
  /// - Simple Log Service: `acs:log:{regionId}:{userId}:project/{Project name}/logstore/{Logstore name}`
  /// - Function Compute: `acs:fc:{regionId}:{userId}:services/{Service name}/functions/{Function name}`
  final pulumi.Input<String>? arn;
  /// The parameters of the alert callback. The parameters are in the JSON format.
  final pulumi.Input<String>? jsonParams;
  /// The level of the alert. Valid values: `Critical`, `Warn`, `Info`.
  final pulumi.Input<String>? level;
  /// The ID of the resource for which alerts are triggered. For more information about how to obtain the ID of the resource for which alerts are triggered, see [DescribeMetricRuleTargets](https://www.alibabacloud.com/help/en/cms/developer-reference/api-describemetricruletargets) .
  final pulumi.Input<String>? targetId;

  /// Creates a new [AlarmTarget].
  /// [arn] The Alibaba Cloud Resource Name (ARN) of the resource. Simple Message Queue (formerly MNS) (SMQ), Auto Scaling, Simple Log Service, and Function Compute are supported:
  /// [jsonParams] The parameters of the alert callback. The parameters are in the JSON format.
  /// [level] The level of the alert. Valid values: `Critical`, `Warn`, `Info`.
  /// [targetId] The ID of the resource for which alerts are triggered. For more information about how to obtain the ID of the resource for which alerts are triggered, see [DescribeMetricRuleTargets](https://www.alibabacloud.com/help/en/cms/developer-reference/api-describemetricruletargets) .
  AlarmTarget({
    this.arn,
    this.jsonParams,
    this.level,
    this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'jsonParams': ?jsonParams,
      'level': ?level,
      'targetId': ?targetId,
    };
  }

  factory AlarmTarget.fromMap(Map<String, dynamic> map) {
    return AlarmTarget(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      jsonParams: map['jsonParams'] == null ? null : (map['jsonParams'] as String).input(),
      level: map['level'] == null ? null : (map['level'] as String).input(),
      targetId: map['targetId'] == null ? null : (map['targetId'] as String).input(),
    );
  }
}

