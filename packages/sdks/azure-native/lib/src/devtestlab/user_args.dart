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
      identity: map['identity'] == null ? null : (UserIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      labName: (map['labName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      secretStore: map['secretStore'] == null ? null : (UserSecretStore.fromMap((map['secretStore']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

