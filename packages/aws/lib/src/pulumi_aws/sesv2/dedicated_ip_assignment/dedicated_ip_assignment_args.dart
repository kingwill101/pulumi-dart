// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DedicatedIpAssignment.
class DedicatedIpAssignmentArgs {
  /// Dedicated IP address.
  final pulumi.Input<String> destinationPoolName;

  /// Dedicated IP address.
  final pulumi.Input<String> ip;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  DedicatedIpAssignmentArgs({
    required this.destinationPoolName,
    required this.ip,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationPoolName'] = destinationPoolName;
    map['ip'] = ip;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DedicatedIpAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedIpAssignmentArgs(
      destinationPoolName:
          pulumi.Input.asInput<String>(map['destinationPoolName']),
      ip: pulumi.Input.asInput<String>(map['ip']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
