// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecr_pull_time_update_exclusion_pull_time_update_exclusion_args_doc}
/// The set of arguments for PullTimeUpdateExclusion.
/// {@endtemplate}
/// {@macro pulumi_ecr_pull_time_update_exclusion_pull_time_update_exclusion_args_doc}
class PullTimeUpdateExclusionArgs {
  /// ARN of the IAM principal to exclude from having image pull times recorded.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> principalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PullTimeUpdateExclusionArgs].
  /// [principalArn] ARN of the IAM principal to exclude from having image pull times recorded.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PullTimeUpdateExclusionArgs({
    required pulumi.Output<String> principalArn,
    pulumi.Output<String>? region,
  }) :
      principalArn = pulumi.Input.asInput<String>(principalArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalArn': principalArn,
      'region': ?region,
    };
  }

  factory PullTimeUpdateExclusionArgs.fromMap(Map<String, dynamic> map) {
    return PullTimeUpdateExclusionArgs(
      principalArn: pulumi.Output.create<String>(map['principalArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

