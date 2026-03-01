// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PullTimeUpdateExclusion resources.
class PullTimeUpdateExclusionState {
  /// ARN of the IAM principal to exclude from having image pull times recorded.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? principalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PullTimeUpdateExclusionState].
  /// [principalArn] ARN of the IAM principal to exclude from having image pull times recorded.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PullTimeUpdateExclusionState({
    pulumi.Output<String>? principalArn,
    pulumi.Output<String>? region,
  }) :
      principalArn = pulumi.Input.asOptionalInput<String>(principalArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalArn': ?principalArn,
      'region': ?region,
    };
  }

  factory PullTimeUpdateExclusionState.fromMap(Map<String, dynamic> map) {
    return PullTimeUpdateExclusionState(
      principalArn: map['principalArn'] == null ? null : pulumi.Output.create<String>(map['principalArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

