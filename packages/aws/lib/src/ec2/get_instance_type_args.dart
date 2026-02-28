// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_get_instance_type_get_instance_type_args_doc}
/// Arguments for getInstanceType.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_instance_type_get_instance_type_args_doc}
class GetInstanceTypeArgs {
  /// Instance
  final pulumi.Input<String> instanceType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetInstanceTypeArgs].
  /// [instanceType] Instance
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetInstanceTypeArgs({
    required String instanceType,
    String? region,
  })  : instanceType = pulumi.Input.asInput<String>(instanceType),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceType'] = instanceType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetInstanceTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeArgs(
      instanceType: map['instanceType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
