// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identitystore_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_identitystore_group_group_args_doc}
class GroupArgs {
  /// A string containing the description of the group.
  final pulumi.Input<String>? description;
  /// A string containing the name of the group. This value is commonly displayed when the group is referenced.
  final pulumi.Input<String> displayName;
  /// The globally unique identifier for the identity store.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> identityStoreId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GroupArgs].
  /// [description] A string containing the description of the group.
  /// [displayName] A string containing the name of the group. This value is commonly displayed when the group is referenced.
  /// [identityStoreId] The globally unique identifier for the identity store.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GroupArgs({
    this.description,
    required this.displayName,
    required this.identityStoreId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'identityStoreId': identityStoreId,
      'region': ?region,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      identityStoreId: pulumi.Input.fromValue(map['identityStoreId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
