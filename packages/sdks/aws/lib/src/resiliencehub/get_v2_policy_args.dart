// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resiliencehub_get_v2_policy_get_v2_policy_args_doc}
/// Arguments for getV2Policy.
/// {@endtemplate}
/// {@macro pulumi_resiliencehub_get_v2_policy_get_v2_policy_args_doc}
class GetV2PolicyArgs {
  /// ARN of the policy.
  final pulumi.Input<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetV2PolicyArgs].
  /// [arn] ARN of the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetV2PolicyArgs({
    required this.arn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'region': ?region,
    };
  }

  factory GetV2PolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetV2PolicyArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
