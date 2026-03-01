// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_identity.dart';
import 'user_secret_store.dart';

/// {@template pulumi_devtestlab_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_user_args_doc}
class UserArgs {
  /// The identity of the user.
  final pulumi.Input<UserIdentity>? identity;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The name of the User
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The secret store of the user.
  final pulumi.Input<UserSecretStore>? secretStore;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [UserArgs].
  /// [identity] The identity of the user.
  /// [labName] The name of the lab.
  /// [location] The location of the resource.
  /// [name] The name of the User
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [secretStore] The secret store of the user.
  /// [tags] The tags of the resource.
  UserArgs({
    pulumi.Output<UserIdentity>? identity,
    required pulumi.Output<String> labName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<UserSecretStore>? secretStore,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<UserIdentity>(identity),
      labName = pulumi.Input.asInput<String>(labName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      secretStore = pulumi.Input.asOptionalInput<UserSecretStore>(secretStore),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<UserIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'labName': labName,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'secretStore': ?pulumi.Input.mapOptionalInputValue<UserSecretStore, Map<String, dynamic>>(secretStore, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      identity: map['identity'] == null ? null : pulumi.Output.create<UserIdentity>(UserIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      labName: pulumi.Output.create<String>(map['labName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secretStore: map['secretStore'] == null ? null : pulumi.Output.create<UserSecretStore>(UserSecretStore.fromMap((map['secretStore'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

