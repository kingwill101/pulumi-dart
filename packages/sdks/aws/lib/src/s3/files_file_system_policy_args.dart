// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_files_file_system_policy_files_file_system_policy_args_doc}
/// The set of arguments for FilesFileSystemPolicy.
/// {@endtemplate}
/// {@macro pulumi_s3_files_file_system_policy_files_file_system_policy_args_doc}
class FilesFileSystemPolicyArgs {
  /// File system ID. Changing this value forces replacement.
  final pulumi.Input<String> fileSystemId;
  /// JSON policy document.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [FilesFileSystemPolicyArgs].
  /// [fileSystemId] File system ID. Changing this value forces replacement.
  /// [policy] JSON policy document.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const FilesFileSystemPolicyArgs({
    required this.fileSystemId,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'policy': policy,
      'region': ?region,
    };
  }

  factory FilesFileSystemPolicyArgs.fromMap(Map<String, dynamic> map) {
    return FilesFileSystemPolicyArgs(
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
