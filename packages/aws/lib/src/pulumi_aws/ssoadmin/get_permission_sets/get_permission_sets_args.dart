// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPermissionSets.
class GetPermissionSetsArgs {
  /// ARN of the SSO Instance associated with the permission set.
  final Input<String> instanceArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetPermissionSetsArgs({
    required this.instanceArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceArn'] = instanceArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetPermissionSetsArgs.fromMap(Map<String, dynamic> map) {
    return GetPermissionSetsArgs(
      instanceArn: Input.asInput<String>(map['instanceArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
