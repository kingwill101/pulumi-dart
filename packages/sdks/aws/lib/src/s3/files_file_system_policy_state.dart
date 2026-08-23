// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FilesFileSystemPolicy resources.
class FilesFileSystemPolicyState {
  /// File system ID. Changing this value forces replacement.
  final pulumi.Input<String>? fileSystemId;
  /// JSON policy document.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [FilesFileSystemPolicyState].
  /// [fileSystemId] File system ID. Changing this value forces replacement.
  /// [policy] JSON policy document.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const FilesFileSystemPolicyState({
    this.fileSystemId,
    this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': ?fileSystemId,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory FilesFileSystemPolicyState.fromMap(Map<String, dynamic> map) {
    return FilesFileSystemPolicyState(
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
