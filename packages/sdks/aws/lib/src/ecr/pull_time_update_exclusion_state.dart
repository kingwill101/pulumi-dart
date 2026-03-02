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
    this.principalArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalArn': ?principalArn,
      'region': ?region,
    };
  }

  factory PullTimeUpdateExclusionState.fromMap(Map<String, dynamic> map) {
    return PullTimeUpdateExclusionState(
      principalArn: map['principalArn'] == null ? null : ((map['principalArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

