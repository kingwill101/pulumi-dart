// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_capacity_manager_capacity_manager_args_doc}
/// The set of arguments for CapacityManager.
/// {@endtemplate}
/// {@macro pulumi_ec2_capacity_manager_capacity_manager_args_doc}
class CapacityManagerArgs {
  /// Whether to enable EC2 Capacity Manager for the account in the configured Region.
  final pulumi.Input<bool> enabled;
  /// Whether to enable cross-account data aggregation for AWS Organizations. Requires `enabled` to be `true`. Can only be enabled from the Organizations management account or a delegated administrator account. If not specified, AWS defaults this to `false` when Capacity Manager is enabled. Removing this argument does not disable Organizations access; set it to `false` explicitly.
  final pulumi.Input<bool?>? organizationsAccess;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [CapacityManagerArgs].
  /// [enabled] Whether to enable EC2 Capacity Manager for the account in the configured Region.
  /// [organizationsAccess] Whether to enable cross-account data aggregation for AWS Organizations. Requires `enabled` to be `true`. Can only be enabled from the Organizations management account or a delegated administrator account. If not specified, AWS defaults this to `false` when Capacity Manager is enabled. Removing this argument does not disable Organizations access; set it to `false` explicitly.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const CapacityManagerArgs({
    required this.enabled,
    this.organizationsAccess,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'organizationsAccess': ?organizationsAccess,
      'region': ?region,
    };
  }

  factory CapacityManagerArgs.fromMap(Map<String, dynamic> map) {
    return CapacityManagerArgs(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      organizationsAccess: (() { final guardedValue = map['organizationsAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
