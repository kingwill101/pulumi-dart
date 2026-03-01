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
  /// Desired instance type. Conflicts with `preferred_instance_types`.
  final pulumi.Input<String>? instanceType;
  /// Ordered list of preferred instance types. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned. Conflicts with `instance_type`.
  final pulumi.Input<List<String>>? preferredInstanceTypes;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetOutpostInstanceTypeArgs].
  /// [arn] Outpost ARN.
  /// [instanceType] Desired instance type. Conflicts with `preferred_instance_types`.
  /// [preferredInstanceTypes] Ordered list of preferred instance types. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned. Conflicts with `instance_type`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetOutpostInstanceTypeArgs({
    required String arn,
    String? instanceType,
    List<String>? preferredInstanceTypes,
    String? region,
  }) :
      arn = pulumi.Input.asInput<String>(arn),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      preferredInstanceTypes = pulumi.Input.asOptionalInput<List<String>>(preferredInstanceTypes),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      arn: map['arn'] as String,
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      preferredInstanceTypes: map['preferredInstanceTypes'] == null ? null : (map['preferredInstanceTypes'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

