// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourcePermission {
  /// Set of IAM actions to grant or revoke permissions on. Max of 16 items.
  final pulumi.Input<List<String>> actions;
  /// The Amazon Resource Name (ARN) of the principal.
  final pulumi.Input<String> principal;

  /// Creates a new [DataSourcePermission].
  /// [actions] Set of IAM actions to grant or revoke permissions on. Max of 16 items.
  /// [principal] The Amazon Resource Name (ARN) of the principal.
  DataSourcePermission({
    required this.actions,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'principal': principal,
    };
  }

  factory DataSourcePermission.fromMap(Map<String, dynamic> map) {
    return DataSourcePermission(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      principal: pulumi.Input.fromValue(map['principal'] as String),
    );
  }
}

