// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_instance_profiles_get_instance_profiles_args_doc}
/// Arguments for getInstanceProfiles.
/// {@endtemplate}
/// {@macro pulumi_iam_get_instance_profiles_get_instance_profiles_args_doc}
class GetInstanceProfilesArgs {
  /// IAM role name.
  final pulumi.Input<String> roleName;

  /// Creates a new [GetInstanceProfilesArgs].
  /// [roleName] IAM role name.
  GetInstanceProfilesArgs({
    required String roleName,
  }) : roleName = pulumi.Input.asInput<String>(roleName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['roleName'] = roleName;
    return map;
  }

  factory GetInstanceProfilesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceProfilesArgs(
      roleName: map['roleName'] as String,
    );
  }
}
