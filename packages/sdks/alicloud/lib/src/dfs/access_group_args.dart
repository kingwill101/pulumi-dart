// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dfs_access_group_access_group_args_doc}
/// The set of arguments for AccessGroup.
/// {@endtemplate}
/// {@macro pulumi_dfs_access_group_access_group_args_doc}
class AccessGroupArgs {
  /// The permission group name. The naming rules are as follows: The length is 6~64 characters. Globally unique and cannot be an empty string. English letters are supported and can contain numbers, underscores (_), and dashes (-).
  final pulumi.Input<String> accessGroupName;

  /// The permission group description.  No more than 32 characters in length.
  final pulumi.Input<String>? description;

  /// The permission group type. Only VPC (VPC) is supported.
  final pulumi.Input<String> networkType;

  /// Creates a new [AccessGroupArgs].
  /// [accessGroupName] The permission group name. The naming rules are as follows: The length is 6~64 characters. Globally unique and cannot be an empty string. English letters are supported and can contain numbers, underscores (_), and dashes (-).
  /// [description] The permission group description.  No more than 32 characters in length.
  /// [networkType] The permission group type. Only VPC (VPC) is supported.
  AccessGroupArgs({
    required this.accessGroupName,
    this.description,
    required this.networkType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupName': accessGroupName,
      'description': ?description,
      'networkType': networkType,
    };
  }

  factory AccessGroupArgs.fromMap(Map<String, dynamic> map) {
    return AccessGroupArgs(
      accessGroupName: pulumi.Input.fromValue(map['accessGroupName'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
    );
  }
}
