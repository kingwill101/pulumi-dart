// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicequotas_auto_management_auto_management_args_doc}
/// The set of arguments for AutoManagement.
/// {@endtemplate}
/// {@macro pulumi_servicequotas_auto_management_auto_management_args_doc}
class AutoManagementArgs {
  /// Map of AWS services excluded from Automatic Management. You will need to include the AWS service code and one or more Service Quotas codes.
  final pulumi.Input<Map<String, List<String>>>? exclusionList;
  /// The AWS User Notifications ARN for Automatic Management notifications.
  final pulumi.Input<String>? notificationArn;
  /// The opt-in level for Automatic Management. Valid values: `ACCOUNT`.
  final pulumi.Input<String> optInLevel;
  /// The opt-in type for Automatic Management. Valid values: `NotifyOnly`, `NotifyAndAdjust`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> optInType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AutoManagementArgs].
  /// [exclusionList] Map of AWS services excluded from Automatic Management. You will need to include the AWS service code and one or more Service Quotas codes.
  /// [notificationArn] The AWS User Notifications ARN for Automatic Management notifications.
  /// [optInLevel] The opt-in level for Automatic Management. Valid values: `ACCOUNT`.
  /// [optInType] The opt-in type for Automatic Management. Valid values: `NotifyOnly`, `NotifyAndAdjust`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AutoManagementArgs({
    this.exclusionList,
    this.notificationArn,
    required this.optInLevel,
    required this.optInType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionList': ?exclusionList,
      'notificationArn': ?notificationArn,
      'optInLevel': optInLevel,
      'optInType': optInType,
      'region': ?region,
    };
  }

  factory AutoManagementArgs.fromMap(Map<String, dynamic> map) {
    return AutoManagementArgs(
      exclusionList: (() { final guardedValue = map['exclusionList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, List<String>>()); })(),
      notificationArn: (() { final guardedValue = map['notificationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optInLevel: pulumi.Input.fromValue(map['optInLevel'] as String),
      optInType: pulumi.Input.fromValue(map['optInType'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
