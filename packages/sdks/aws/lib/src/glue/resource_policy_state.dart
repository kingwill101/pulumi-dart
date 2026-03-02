// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourcePolicy resources.
class ResourcePolicyState {
  /// Indicates that you are using both methods to grant cross-account. Valid values are `TRUE` and `FALSE`. Note the provider will not perform drift detetction on this field as its not return on read.
  final pulumi.Input<String>? enableHybrid;
  /// The policy to be applied to the aws glue data catalog.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ResourcePolicyState].
  /// [enableHybrid] Indicates that you are using both methods to grant cross-account. Valid values are `TRUE` and `FALSE`. Note the provider will not perform drift detetction on this field as its not return on read.
  /// [policy] The policy to be applied to the aws glue data catalog.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ResourcePolicyState({
    this.enableHybrid,
    this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableHybrid': ?enableHybrid,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory ResourcePolicyState.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyState(
      enableHybrid: map['enableHybrid'] == null ? null : (map['enableHybrid'] as String).input(),
      policy: map['policy'] == null ? null : (map['policy'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

