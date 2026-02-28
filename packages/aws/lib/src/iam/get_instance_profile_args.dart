// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_instance_profile_get_instance_profile_args_doc}
/// Arguments for getInstanceProfile.
/// {@endtemplate}
/// {@macro pulumi_iam_get_instance_profile_get_instance_profile_args_doc}
class GetInstanceProfileArgs {
  /// Friendly IAM instance profile name to match.
  final pulumi.Input<String> name;

  /// Creates a new [GetInstanceProfileArgs].
  /// [name] Friendly IAM instance profile name to match.
  GetInstanceProfileArgs({
    required String name,
  }) : name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetInstanceProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceProfileArgs(
      name: map['name'] as String,
    );
  }
}
