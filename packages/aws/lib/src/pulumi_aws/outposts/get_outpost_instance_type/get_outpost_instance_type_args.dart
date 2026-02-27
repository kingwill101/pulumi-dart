// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOutpostInstanceType.
class GetOutpostInstanceTypeArgs {
  /// Outpost ARN.
  ///
  /// The following arguments are optional:
  final Input<String> arn;

  /// Desired instance type. Conflicts with `preferred_instance_types`.
  final Input<String>? instanceType;

  /// Ordered list of preferred instance types. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned. Conflicts with `instance_type`.
  final Input<List<String>>? preferredInstanceTypes;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetOutpostInstanceTypeArgs({
    required this.arn,
    this.instanceType,
    this.preferredInstanceTypes,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final preferredInstanceTypesValue = preferredInstanceTypes;
    if (preferredInstanceTypesValue != null) {
      map['preferredInstanceTypes'] = preferredInstanceTypesValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetOutpostInstanceTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetOutpostInstanceTypeArgs(
      arn: Input.asInput<String>(map['arn']),
      instanceType: Input.asOptionalInput<String>(map['instanceType']),
      preferredInstanceTypes:
          Input.asOptionalInput<List<String>>(map['preferredInstanceTypes']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
