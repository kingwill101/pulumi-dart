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
    required this.principalArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalArn': principalArn,
      'region': ?region,
    };
  }

  factory PullTimeUpdateExclusionArgs.fromMap(Map<String, dynamic> map) {
    return PullTimeUpdateExclusionArgs(
      principalArn: (map['principalArn'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

