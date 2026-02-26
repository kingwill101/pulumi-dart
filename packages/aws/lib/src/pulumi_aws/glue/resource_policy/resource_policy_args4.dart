// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ResourcePolicy.
class ResourcePolicyArgs4 {
  /// Indicates that you are using both methods to grant cross-account. Valid values are `TRUE` and `FALSE`. Note the provider will not perform drift detetction on this field as its not return on read.
  final Input<String>? enableHybrid;

  /// The policy to be applied to the aws glue data catalog.
  final Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  ResourcePolicyArgs4({
    this.enableHybrid,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableHybridValue = enableHybrid;
    if (enableHybridValue != null) {
      map['enableHybrid'] = enableHybridValue;
    }
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ResourcePolicyArgs4.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyArgs4(
      enableHybrid: Input.asOptionalInput<String>(map['enableHybrid']),
      policy: Input.asInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
