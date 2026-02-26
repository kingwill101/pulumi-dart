// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Group.
class GroupArgs3 {
  /// A string containing the description of the group.
  final Input<String>? description;

  /// A string containing the name of the group. This value is commonly displayed when the group is referenced.
  final Input<String> displayName;

  /// The globally unique identifier for the identity store.
  ///
  /// The following arguments are optional:
  final Input<String> identityStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GroupArgs3({
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

  factory GroupArgs3.fromMap(Map<String, dynamic> map) {
    return GroupArgs3(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      identityStoreId: Input.asInput<String>(map['identityStoreId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
