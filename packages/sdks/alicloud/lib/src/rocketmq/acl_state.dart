// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Acl resources.
class AclState {
  /// The type of operations that can be performed on the resource. Valid values:
  /// - If `resource_type` is set to `Topic`. Valid values: `Pub`, `Sub`.
  /// - If `resource_type` is set to `Group`. Valid values: `Sub`.
  final pulumi.Input<List<String>>? actions;
  /// The decision result of the authorization. Valid values: `Deny`, `Allow`.
  final pulumi.Input<String>? decision;
  /// The instance ID.
  final pulumi.Input<String>? instanceId;
  /// The IP address whitelists.
  final pulumi.Input<List<String>>? ipWhitelists;
  /// The name of the resource on which you want to grant permissions.
  final pulumi.Input<String>? resourceName;
  /// The type of the resource on which you want to grant permissions. Valid values: `Group`, `Topic`.
  final pulumi.Input<String>? resourceType;
  /// The username of the account.
  final pulumi.Input<String>? username;

  /// Creates a new [AclState].
  /// [actions] The type of operations that can be performed on the resource. Valid values:
  /// [decision] The decision result of the authorization. Valid values: `Deny`, `Allow`.
  /// [instanceId] The instance ID.
  /// [ipWhitelists] The IP address whitelists.
  /// [resourceName] The name of the resource on which you want to grant permissions.
  /// [resourceType] The type of the resource on which you want to grant permissions. Valid values: `Group`, `Topic`.
  /// [username] The username of the account.
  AclState({
    pulumi.Output<List<String>>? actions,
    pulumi.Output<String>? decision,
    pulumi.Output<String>? instanceId,
    pulumi.Output<List<String>>? ipWhitelists,
    pulumi.Output<String>? resourceName,
    pulumi.Output<String>? resourceType,
    pulumi.Output<String>? username,
  }) :
      actions = pulumi.Input.asOptionalInput<List<String>>(actions),
      decision = pulumi.Input.asOptionalInput<String>(decision),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      ipWhitelists = pulumi.Input.asOptionalInput<List<String>>(ipWhitelists),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      username = pulumi.Input.asOptionalInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'decision': ?decision,
      'instanceId': ?instanceId,
      'ipWhitelists': ?ipWhitelists,
      'resourceName': ?resourceName,
      'resourceType': ?resourceType,
      'username': ?username,
    };
  }

  factory AclState.fromMap(Map<String, dynamic> map) {
    return AclState(
      actions: map['actions'] == null ? null : pulumi.Output.create<List<String>>((map['actions'] as List).cast<String>()),
      decision: map['decision'] == null ? null : pulumi.Output.create<String>(map['decision'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      ipWhitelists: map['ipWhitelists'] == null ? null : pulumi.Output.create<List<String>>((map['ipWhitelists'] as List).cast<String>()),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

