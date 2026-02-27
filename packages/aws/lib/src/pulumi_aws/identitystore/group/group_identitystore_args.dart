// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Group.
class GroupIdentitystoreArgs {
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

  GroupIdentitystoreArgs({
    this.description,
    required this.displayName,
    required this.identityStoreId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    map['identityStoreId'] = identityStoreId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GroupIdentitystoreArgs.fromMap(Map<String, dynamic> map) {
    return GroupIdentitystoreArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      identityStoreId: pulumi.Input.asInput<String>(map['identityStoreId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
