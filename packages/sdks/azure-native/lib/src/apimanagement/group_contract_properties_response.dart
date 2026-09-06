// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Group contract Properties.
class GroupContractPropertiesResponse {
  /// true if the group is one of the three system groups (Administrators, Developers, or Guests); otherwise false.
  final pulumi.Input<bool> builtIn;
  /// Group description. Can contain HTML formatting tags.
  final pulumi.Input<String?>? description;
  /// Group name.
  final pulumi.Input<String> displayName;
  /// For external groups, this property contains the id of the group from the external identity provider, e.g. for Azure Active Directory `aad://&lt;tenant&gt;.onmicrosoft.com/groups/&lt;group object id&gt;`; otherwise the value is null.
  final pulumi.Input<String?>? externalId;
  /// Group type.
  final pulumi.Input<String?>? type;

  /// Creates a new [GroupContractPropertiesResponse].
  /// [builtIn] true if the group is one of the three system groups (Administrators, Developers, or Guests); otherwise false.
  /// [description] Group description. Can contain HTML formatting tags.
  /// [displayName] Group name.
  /// [externalId] For external groups, this property contains the id of the group from the external identity provider, e.g. for Azure Active Directory `aad://&lt;tenant&gt;.onmicrosoft.com/groups/&lt;group object id&gt;`; otherwise the value is null.
  /// [type] Group type.
  const GroupContractPropertiesResponse({
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
      builtIn: pulumi.Input.fromValue(map['builtIn'] as bool),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
