// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ResourcePolicy.
class ResourcePolicyGlueArgs {
  /// Indicates that you are using both methods to grant cross-account. Valid values are `TRUE` and `FALSE`. Note the provider will not perform drift detetction on this field as its not return on read.
  final pulumi.Input<String>? enableHybrid;

  /// The policy to be applied to the aws glue data catalog.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  ResourcePolicyGlueArgs({
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

  factory ResourcePolicyGlueArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyGlueArgs(
      enableHybrid: pulumi.Input.asOptionalInput<String>(map['enableHybrid']),
      policy: pulumi.Input.asInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
