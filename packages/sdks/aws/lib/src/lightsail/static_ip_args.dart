// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lightsail_static_ip_static_ip_args_doc}
/// The set of arguments for StaticIp.
/// {@endtemplate}
/// {@macro pulumi_lightsail_static_ip_static_ip_args_doc}
class StaticIpArgs {
  /// Name for the allocated static IP.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [StaticIpArgs].
  /// [name] Name for the allocated static IP.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  StaticIpArgs({
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
    };
  }

  factory StaticIpArgs.fromMap(Map<String, dynamic> map) {
    return StaticIpArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

