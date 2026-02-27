// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstanceType.
class GetInstanceTypeArgs {
  /// Instance
  final pulumi.Input<String> instanceType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetInstanceTypeArgs({
    required this.instanceType,
    this.region,
  });

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
      instanceType: pulumi.Input.asInput<String>(map['instanceType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
