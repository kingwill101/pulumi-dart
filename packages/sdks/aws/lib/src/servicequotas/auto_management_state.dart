// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AutoManagement resources.
class AutoManagementState {
  /// Map of AWS services excluded from Automatic Management. You will need to include the AWS service code and one or more Service Quotas codes.
  final pulumi.Input<Map<String, List<String>>?>? exclusionList;
  /// The AWS User Notifications ARN for Automatic Management notifications.
  final pulumi.Input<String?>? notificationArn;
  /// The opt-in level for Automatic Management. Valid values: `ACCOUNT`.
  final pulumi.Input<String?>? optInLevel;
  /// The opt-in type for Automatic Management. Valid values: `NotifyOnly`, `NotifyAndAdjust`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? optInType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [AutoManagementState].
  /// [exclusionList] Map of AWS services excluded from Automatic Management. You will need to include the AWS service code and one or more Service Quotas codes.
  /// [notificationArn] The AWS User Notifications ARN for Automatic Management notifications.
  /// [optInLevel] The opt-in level for Automatic Management. Valid values: `ACCOUNT`.
  /// [optInType] The opt-in type for Automatic Management. Valid values: `NotifyOnly`, `NotifyAndAdjust`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AutoManagementState({
    this.exclusionList,
    this.notificationArn,
    this.optInLevel,
    this.optInType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionList': ?exclusionList,
      'notificationArn': ?notificationArn,
      'optInLevel': ?optInLevel,
      'optInType': ?optInType,
      'region': ?region,
    };
  }

  factory AutoManagementState.fromMap(Map<String, dynamic> map) {
    return AutoManagementState(
      exclusionList: (() { final guardedValue = map['exclusionList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      notificationArn: (() { final guardedValue = map['notificationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optInLevel: (() { final guardedValue = map['optInLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optInType: (() { final guardedValue = map['optInType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
