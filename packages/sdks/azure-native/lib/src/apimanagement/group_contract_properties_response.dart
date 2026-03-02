// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Group contract Properties.
class GroupContractPropertiesResponse {
  /// true if the group is one of the three system groups (Administrators, Developers, or Guests); otherwise false.
  final pulumi.Input<bool> builtIn;
  /// Group description. Can contain HTML formatting tags.
  final pulumi.Input<String>? description;
  /// Group name.
  final pulumi.Input<String> displayName;
  /// For external groups, this property contains the id of the group from the external identity provider, e.g. for Azure Active Directory `aad://<tenant>.onmicrosoft.com/groups/<group object id>`; otherwise the value is null.
  final pulumi.Input<String>? externalId;
  /// Group type.
  final pulumi.Input<String>? type;

  /// Creates a new [GroupContractPropertiesResponse].
  /// [builtIn] true if the group is one of the three system groups (Administrators, Developers, or Guests); otherwise false.
  /// [description] Group description. Can contain HTML formatting tags.
  /// [displayName] Group name.
  /// [externalId] For external groups, this property contains the id of the group from the external identity provider, e.g. for Azure Active Directory `aad://<tenant>.onmicrosoft.com/groups/<group object id>`; otherwise the value is null.
  /// [type] Group type.
  GroupContractPropertiesResponse({
    required this.builtIn,
    this.description,
    required this.displayName,
    this.externalId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builtIn': builtIn,
      'description': ?description,
      'displayName': displayName,
      'externalId': ?externalId,
      'type': ?type,
    };
  }

  factory GroupContractPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GroupContractPropertiesResponse(
      builtIn: (map['builtIn'] as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      externalId: map['externalId'] == null ? null : (map['externalId']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

