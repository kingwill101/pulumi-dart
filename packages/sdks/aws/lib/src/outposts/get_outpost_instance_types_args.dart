// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_outposts_get_outpost_instance_types_get_outpost_instance_types_args_doc}
/// Arguments for getOutpostInstanceTypes.
/// {@endtemplate}
/// {@macro pulumi_outposts_get_outpost_instance_types_get_outpost_instance_types_args_doc}
class GetOutpostInstanceTypesArgs {
  /// Outpost ARN.
  final pulumi.Input<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetOutpostInstanceTypesArgs].
  /// [arn] Outpost ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetOutpostInstanceTypesArgs({
    required this.arn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'region': ?region,
    };
  }

  factory GetOutpostInstanceTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetOutpostInstanceTypesArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

