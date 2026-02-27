// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PullTimeUpdateExclusion.
class PullTimeUpdateExclusionArgs {
  /// ARN of the IAM principal to exclude from having image pull times recorded.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> principalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  PullTimeUpdateExclusionArgs({
    required this.principalArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['principalArn'] = principalArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory PullTimeUpdateExclusionArgs.fromMap(Map<String, dynamic> map) {
    return PullTimeUpdateExclusionArgs(
      principalArn: pulumi.Input.asInput<String>(map['principalArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
