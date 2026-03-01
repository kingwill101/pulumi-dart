// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_policy_advanced_config_policy_advanced_config_args_doc}
/// The set of arguments for PolicyAdvancedConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_policy_advanced_config_policy_advanced_config_args_doc}
class PolicyAdvancedConfigArgs {
  /// Access control policy strict mode of on-state. Valid values:
  final pulumi.Input<String> internetSwitch;

  /// Creates a new [PolicyAdvancedConfigArgs].
  /// [internetSwitch] Access control policy strict mode of on-state. Valid values:
  PolicyAdvancedConfigArgs({
    required pulumi.Output<String> internetSwitch,
  }) :
      internetSwitch = pulumi.Input.asInput<String>(internetSwitch);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetSwitch': internetSwitch,
    };
  }

  factory PolicyAdvancedConfigArgs.fromMap(Map<String, dynamic> map) {
    return PolicyAdvancedConfigArgs(
      internetSwitch: pulumi.Output.create<String>(map['internetSwitch'] as String),
    );
  }
}

