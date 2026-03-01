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
    required pulumi.Output<String> roleName,
  }) :
      roleName = pulumi.Input.asInput<String>(roleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleName': roleName,
    };
  }

  factory GetInstanceProfilesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceProfilesArgs(
      roleName: pulumi.Output.create<String>(map['roleName'] as String),
    );
  }
}

