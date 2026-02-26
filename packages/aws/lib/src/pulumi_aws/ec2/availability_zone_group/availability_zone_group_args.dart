// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AvailabilityZoneGroup.
class AvailabilityZoneGroupArgs {
  /// Name of the Availability Zone Group.
  final Input<String> groupName;

  /// Indicates whether to enable or disable Availability Zone Group. Valid values: `opted-in` or `not-opted-in`.
  final Input<String> optInStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  AvailabilityZoneGroupArgs({
    required this.groupName,
    required this.optInStatus,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupName'] = groupName;
    map['optInStatus'] = optInStatus;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AvailabilityZoneGroupArgs.fromMap(Map<String, dynamic> map) {
    return AvailabilityZoneGroupArgs(
      groupName: Input.asInput<String>(map['groupName']),
      optInStatus: Input.asInput<String>(map['optInStatus']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
