// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AvailabilityZoneGroup resources.
class AvailabilityZoneGroupState {
  /// Name of the Availability Zone Group.
  final pulumi.Input<String>? groupName;
  /// Indicates whether to enable or disable Availability Zone Group. Valid values: `opted-in` or `not-opted-in`.
  final pulumi.Input<String>? optInStatus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AvailabilityZoneGroupState].
  /// [groupName] Name of the Availability Zone Group.
  /// [optInStatus] Indicates whether to enable or disable Availability Zone Group. Valid values: `opted-in` or `not-opted-in`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AvailabilityZoneGroupState({
    pulumi.Output<String>? groupName,
    pulumi.Output<String>? optInStatus,
    pulumi.Output<String>? region,
  }) :
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      optInStatus = pulumi.Input.asOptionalInput<String>(optInStatus),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'optInStatus': ?optInStatus,
      'region': ?region,
    };
  }

  factory AvailabilityZoneGroupState.fromMap(Map<String, dynamic> map) {
    return AvailabilityZoneGroupState(
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      optInStatus: map['optInStatus'] == null ? null : pulumi.Output.create<String>(map['optInStatus'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

