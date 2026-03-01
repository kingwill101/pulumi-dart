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
    required pulumi.Output<List<String>> actions,
    required pulumi.Output<String> decision,
    required pulumi.Output<String> instanceId,
    pulumi.Output<List<String>>? ipWhitelists,
    required pulumi.Output<String> resourceName,
    required pulumi.Output<String> resourceType,
    required pulumi.Output<String> username,
  }) :
      actions = pulumi.Input.asInput<List<String>>(actions),
      decision = pulumi.Input.asInput<String>(decision),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      ipWhitelists = pulumi.Input.asOptionalInput<List<String>>(ipWhitelists),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      resourceType = pulumi.Input.asInput<String>(resourceType),
      username = pulumi.Input.asInput<String>(username);

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
      actions: pulumi.Output.create<List<String>>((map['actions'] as List).cast<String>()),
      decision: pulumi.Output.create<String>(map['decision'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      ipWhitelists: map['ipWhitelists'] == null ? null : pulumi.Output.create<List<String>>((map['ipWhitelists'] as List).cast<String>()),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
      resourceType: pulumi.Output.create<String>(map['resourceType'] as String),
      username: pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

