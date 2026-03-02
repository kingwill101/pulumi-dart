// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceGroupMonitoringAgentProcessAlertConfigTargetList {
  /// The Alibaba Cloud Resource Name (ARN) of the resource.
  final pulumi.Input<String>? arn;
  /// The parameters of the alert callback. Specify the parameters in the JSON format.
  final pulumi.Input<String>? jsonParams;
  /// The alert level. Valid values: `CRITICAL`, `WARN`, `INFO`.
  final pulumi.Input<String>? level;
  /// The ID of the resource for which alerts are triggered.
  final pulumi.Input<String>? targetListId;

  /// Creates a new [ServiceGroupMonitoringAgentProcessAlertConfigTargetList].
  /// [arn] The Alibaba Cloud Resource Name (ARN) of the resource.
  /// [jsonParams] The parameters of the alert callback. Specify the parameters in the JSON format.
  /// [level] The alert level. Valid values: `CRITICAL`, `WARN`, `INFO`.
  /// [targetListId] The ID of the resource for which alerts are triggered.
  ServiceGroupMonitoringAgentProcessAlertConfigTargetList({
    this.arn,
    this.jsonParams,
    this.level,
    this.targetListId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'jsonParams': ?jsonParams,
      'level': ?level,
      'targetListId': ?targetListId,
    };
  }

  factory ServiceGroupMonitoringAgentProcessAlertConfigTargetList.fromMap(Map<String, dynamic> map) {
    return ServiceGroupMonitoringAgentProcessAlertConfigTargetList(
      arn: map['arn'] == null ? null : (map['arn']! as String).input(),
      jsonParams: map['jsonParams'] == null ? null : (map['jsonParams']! as String).input(),
      level: map['level'] == null ? null : (map['level']! as String).input(),
      targetListId: map['targetListId'] == null ? null : (map['targetListId']! as String).input(),
    );
  }
}

