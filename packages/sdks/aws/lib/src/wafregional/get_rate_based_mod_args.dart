// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_wafregional_get_rate_based_mod_get_rate_based_mod_args_doc}
/// Arguments for getRateBasedMod.
/// {@endtemplate}
/// {@macro pulumi_wafregional_get_rate_based_mod_get_rate_based_mod_args_doc}
class GetRateBasedModArgs {
  /// Name of the WAF Regional rate based rule.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetRateBasedModArgs].
  /// [name] Name of the WAF Regional rate based rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetRateBasedModArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? region,
  }) :
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
    };
  }

  factory GetRateBasedModArgs.fromMap(Map<String, dynamic> map) {
    return GetRateBasedModArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

