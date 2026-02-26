// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstanceProfiles.
class GetInstanceProfilesArgs {
  /// IAM role name.
  final Input<String> roleName;

  GetInstanceProfilesArgs({
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['roleName'] = roleName;
    return map;
  }

  factory GetInstanceProfilesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceProfilesArgs(
      roleName: Input.asInput<String>(map['roleName']),
    );
  }
}
