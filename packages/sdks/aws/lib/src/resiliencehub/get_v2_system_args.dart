// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resiliencehub_get_v2_system_get_v2_system_args_doc}
/// Arguments for getV2System.
/// {@endtemplate}
/// {@macro pulumi_resiliencehub_get_v2_system_get_v2_system_args_doc}
class GetV2SystemArgs {
  /// ARN of the system.
  final pulumi.Input<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetV2SystemArgs].
  /// [arn] ARN of the system.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetV2SystemArgs({
    required this.arn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'region': ?region,
    };
  }

  factory GetV2SystemArgs.fromMap(Map<String, dynamic> map) {
    return GetV2SystemArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
