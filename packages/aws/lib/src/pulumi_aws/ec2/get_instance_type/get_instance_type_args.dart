// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstanceType.
class GetInstanceTypeArgs {
  /// Instance
  final Input<String> instanceType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      instanceType: Input.asInput<String>(map['instanceType']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
