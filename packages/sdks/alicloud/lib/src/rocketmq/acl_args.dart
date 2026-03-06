// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rocketmq_acl_acl_args_doc}
/// The set of arguments for Acl.
/// {@endtemplate}
/// {@macro pulumi_rocketmq_acl_acl_args_doc}
class AclArgs {
  /// The type of operations that can be performed on the resource. Valid values:
  /// - If `resource_type` is set to `Topic`. Valid values: `Pub`, `Sub`.
  /// - If `resource_type` is set to `Group`. Valid values: `Sub`.
  final pulumi.Input<List<String>> actions;
  /// The decision result of the authorization. Valid values: `Deny`, `Allow`.
  final pulumi.Input<String> decision;
  /// The instance ID.
  final pulumi.Input<String> instanceId;
  /// The IP address whitelists.
  final pulumi.Input<List<String>>? ipWhitelists;
  /// The name of the resource on which you want to grant permissions.
  final pulumi.Input<String> resourceName;
  /// The type of the resource on which you want to grant permissions. Valid values: `Group`, `Topic`.
  final pulumi.Input<String> resourceType;
  /// The username of the account.
  final pulumi.Input<String> username;

  /// Creates a new [AclArgs].
  /// [actions] The type of operations that can be performed on the resource. Valid values:
  /// [decision] The decision result of the authorization. Valid values: `Deny`, `Allow`.
  /// [instanceId] The instance ID.
  /// [ipWhitelists] The IP address whitelists.
  /// [resourceName] The name of the resource on which you want to grant permissions.
  /// [resourceType] The type of the resource on which you want to grant permissions. Valid values: `Group`, `Topic`.
  /// [username] The username of the account.
  const AclArgs({
    required this.actions,
    required this.decision,
    required this.instanceId,
    this.ipWhitelists,
    required this.resourceName,
    required this.resourceType,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'decision': decision,
      'instanceId': instanceId,
      'ipWhitelists': ?ipWhitelists,
      'resourceName': resourceName,
      'resourceType': resourceType,
      'username': username,
    };
  }

  factory AclArgs.fromMap(Map<String, dynamic> map) {
    return AclArgs(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      decision: pulumi.Input.fromValue(map['decision'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      ipWhitelists: (() { final guardedValue = map['ipWhitelists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

