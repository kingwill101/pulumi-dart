// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanStageTargetChannelTargetInfo {
  /// The Amazon Resource Name (ARN) of the contact channel.
  final pulumi.Input<String> contactChannelId;
  /// The number of minutes to wait before retrying to send engagement if the engagement initially failed.
  final pulumi.Input<int>? retryIntervalInMinutes;

  /// Creates a new [PlanStageTargetChannelTargetInfo].
  /// [contactChannelId] The Amazon Resource Name (ARN) of the contact channel.
  /// [retryIntervalInMinutes] The number of minutes to wait before retrying to send engagement if the engagement initially failed.
  const PlanStageTargetChannelTargetInfo({
    required this.contactChannelId,
    this.retryIntervalInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactChannelId': contactChannelId,
      'retryIntervalInMinutes': ?retryIntervalInMinutes,
    };
  }

  factory PlanStageTargetChannelTargetInfo.fromMap(Map<String, dynamic> map) {
    return PlanStageTargetChannelTargetInfo(
      contactChannelId: pulumi.Input.fromValue(map['contactChannelId'] as String),
      retryIntervalInMinutes: (() { final guardedValue = map['retryIntervalInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
