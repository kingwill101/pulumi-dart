// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupMetricRuleTarget {
  /// The Alibaba Cloud Resource Name (ARN) of the resource.
  /// > **NOTE:** Currently, the Alibaba Cloud Resource Name (ARN) of the resource. To use, please [submit an application](https://www.alibabacloud.com/help/en/cloudmonitor/latest/describemetricruletargets).
  final pulumi.Input<String>? arn;
  /// The ID of the resource for which alerts are triggered.
  final pulumi.Input<String>? id;
  /// The parameters of the alert callback. The parameters are in the JSON format.
  final pulumi.Input<String>? jsonParams;
  /// The level of the alert. Valid values: `Critical`, `Warn`, `Info`.
  final pulumi.Input<String>? level;

  /// Creates a new [GroupMetricRuleTarget].
  /// [arn] The Alibaba Cloud Resource Name (ARN) of the resource.
  /// [id] The ID of the resource for which alerts are triggered.
  /// [jsonParams] The parameters of the alert callback. The parameters are in the JSON format.
  /// [level] The level of the alert. Valid values: `Critical`, `Warn`, `Info`.
  GroupMetricRuleTarget({
    this.arn,
    this.id,
    this.jsonParams,
    this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'jsonParams': ?jsonParams,
      'level': ?level,
    };
  }

  factory GroupMetricRuleTarget.fromMap(Map<String, dynamic> map) {
    return GroupMetricRuleTarget(
      arn: map['arn'] == null ? null : (map['arn']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      jsonParams: map['jsonParams'] == null ? null : (map['jsonParams']! as String).input(),
      level: map['level'] == null ? null : (map['level']! as String).input(),
    );
  }
}

