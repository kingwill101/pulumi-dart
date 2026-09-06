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
  final pulumi.Input<UserIdentity?>? identity;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the user profile.
  final pulumi.Input<String?>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The secret store of the user.
  final pulumi.Input<UserSecretStore?>? secretStore;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [UserArgs].
  /// [identity] The identity of the user.
  /// [labName] The name of the lab.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the user profile.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [secretStore] The secret store of the user.
  /// [tags] Resource tags.
  const UserArgs({
    this.identity,
    required this.labName,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.secretStore,
    this.tags,
  });

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
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labName: pulumi.Input.fromValue(map['labName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      secretStore: (() { final guardedValue = map['secretStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserSecretStore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
