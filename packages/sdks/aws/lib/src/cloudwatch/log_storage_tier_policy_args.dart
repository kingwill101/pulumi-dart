// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_log_storage_tier_policy_log_storage_tier_policy_args_doc}
/// The set of arguments for LogStorageTierPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_log_storage_tier_policy_log_storage_tier_policy_args_doc}
class LogStorageTierPolicyArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Storage tier to set for the account. Valid values are `STANDARD` or `INTELLIGENT_TIERING`.
  final pulumi.Input<String> storageTier;

  /// Creates a new [LogStorageTierPolicyArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageTier] Storage tier to set for the account. Valid values are `STANDARD` or `INTELLIGENT_TIERING`.
  const LogStorageTierPolicyArgs({
    this.region,
    required this.storageTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'storageTier': storageTier,
    };
  }

  factory LogStorageTierPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LogStorageTierPolicyArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageTier: pulumi.Input.fromValue(map['storageTier'] as String),
    );
  }
}
