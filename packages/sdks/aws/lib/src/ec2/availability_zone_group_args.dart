// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_availability_zone_group_availability_zone_group_args_doc}
/// The set of arguments for AvailabilityZoneGroup.
/// {@endtemplate}
/// {@macro pulumi_ec2_availability_zone_group_availability_zone_group_args_doc}
class AvailabilityZoneGroupArgs {
  /// Name of the Availability Zone Group.
  final pulumi.Input<String> groupName;
  /// Indicates whether to enable or disable Availability Zone Group. Valid values: `opted-in` or `not-opted-in`.
  final pulumi.Input<String> optInStatus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AvailabilityZoneGroupArgs].
  /// [groupName] Name of the Availability Zone Group.
  /// [optInStatus] Indicates whether to enable or disable Availability Zone Group. Valid values: `opted-in` or `not-opted-in`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AvailabilityZoneGroupArgs({
    required this.groupName,
    required this.optInStatus,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
      'optInStatus': optInStatus,
      'region': ?region,
    };
  }

  factory AvailabilityZoneGroupArgs.fromMap(Map<String, dynamic> map) {
    return AvailabilityZoneGroupArgs(
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      optInStatus: pulumi.Input.fromValue(map['optInStatus'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
