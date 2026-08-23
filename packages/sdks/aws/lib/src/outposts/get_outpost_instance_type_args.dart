// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_outposts_get_outpost_instance_type_get_outpost_instance_type_args_doc}
/// Arguments for getOutpostInstanceType.
/// {@endtemplate}
/// {@macro pulumi_outposts_get_outpost_instance_type_get_outpost_instance_type_args_doc}
class GetOutpostInstanceTypeArgs {
  /// Outpost ARN.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> arn;
  /// Desired instance type. Conflicts with `preferredInstanceTypes`.
  final pulumi.Input<String>? instanceType;
  /// Ordered list of preferred instance types. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned. Conflicts with `instanceType`.
  final pulumi.Input<List<String>>? preferredInstanceTypes;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetOutpostInstanceTypeArgs].
  /// [arn] Outpost ARN.
  /// [instanceType] Desired instance type. Conflicts with `preferredInstanceTypes`.
  /// [preferredInstanceTypes] Ordered list of preferred instance types. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned. Conflicts with `instanceType`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetOutpostInstanceTypeArgs({
    required this.arn,
    this.instanceType,
    this.preferredInstanceTypes,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'instanceType': ?instanceType,
      'preferredInstanceTypes': ?preferredInstanceTypes,
      'region': ?region,
    };
  }

  factory GetOutpostInstanceTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetOutpostInstanceTypeArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredInstanceTypes: (() { final guardedValue = map['preferredInstanceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
