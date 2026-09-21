// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPlanStageTargetChannelTargetInfo {
  final pulumi.Input<String> contactChannelId;
  final pulumi.Input<int> retryIntervalInMinutes;

  /// Creates a new [GetPlanStageTargetChannelTargetInfo].
  /// [contactChannelId] Required.
  /// [retryIntervalInMinutes] Required.
  const GetPlanStageTargetChannelTargetInfo({
    required this.contactChannelId,
    required this.retryIntervalInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactChannelId': contactChannelId,
      'retryIntervalInMinutes': retryIntervalInMinutes,
    };
  }

  factory GetPlanStageTargetChannelTargetInfo.fromMap(Map<String, dynamic> map) {
    return GetPlanStageTargetChannelTargetInfo(
      contactChannelId: pulumi.Input.fromValue(map['contactChannelId'] as String),
      retryIntervalInMinutes: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['retryIntervalInMinutes'])),
    );
  }
}
