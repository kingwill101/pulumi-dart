// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_trim_iam_role_path_trim_iam_role_path_args_doc}
/// Arguments for trimIamRolePath.
/// {@endtemplate}
/// {@macro pulumi_index_trim_iam_role_path_trim_iam_role_path_args_doc}
class TrimIamRolePathArgs {
  /// IAM role Amazon Resource Name (ARN)
  final pulumi.Input<String> arn;

  /// Creates a new [TrimIamRolePathArgs].
  /// [arn] IAM role Amazon Resource Name (ARN)
  const TrimIamRolePathArgs({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
    };
  }

  factory TrimIamRolePathArgs.fromMap(Map<String, dynamic> map) {
    return TrimIamRolePathArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
    );
  }
}
