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
  AclArgs({
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
      actions: ((map['actions'] as List).cast<String>()).input(),
      decision: (map['decision'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      ipWhitelists: map['ipWhitelists'] == null ? null : ((map['ipWhitelists']! as List).cast<String>()).input(),
      resourceName: (map['resourceName'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

