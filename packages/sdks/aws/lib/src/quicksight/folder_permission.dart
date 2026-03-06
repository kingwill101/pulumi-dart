// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FolderPermission {
  /// List of IAM actions to grant or revoke permissions on.
  final pulumi.Input<List<String>> actions;
  /// ARN of the principal. See the [ResourcePermission documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ResourcePermission.html) for the applicable ARN values.
  final pulumi.Input<String> principal;

  /// Creates a new [FolderPermission].
  /// [actions] List of IAM actions to grant or revoke permissions on.
  /// [principal] ARN of the principal. See the [ResourcePermission documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ResourcePermission.html) for the applicable ARN values.
  const FolderPermission({
    required this.actions,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'principal': principal,
    };
  }

  factory FolderPermission.fromMap(Map<String, dynamic> map) {
    return FolderPermission(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      principal: pulumi.Input.fromValue(map['principal'] as String),
    );
  }
}

