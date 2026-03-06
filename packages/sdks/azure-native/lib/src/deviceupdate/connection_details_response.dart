// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Private endpoint connection proxy object properties.
class ConnectionDetailsResponse {
  /// Group ID.
  final pulumi.Input<String> groupId;
  /// Connection details ID.
  final pulumi.Input<String> id;
  /// Link ID.
  final pulumi.Input<String> linkIdentifier;
  /// Member name.
  final pulumi.Input<String> memberName;
  /// Private IP address.
  final pulumi.Input<String> privateIpAddress;

  /// Creates a new [ConnectionDetailsResponse].
  /// [groupId] Group ID.
  /// [id] Connection details ID.
  /// [linkIdentifier] Link ID.
  /// [memberName] Member name.
  /// [privateIpAddress] Private IP address.
  const ConnectionDetailsResponse({
    required this.groupId,
    required this.id,
    required this.linkIdentifier,
    required this.memberName,
    required this.privateIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'id': id,
      'linkIdentifier': linkIdentifier,
      'memberName': memberName,
      'privateIpAddress': privateIpAddress,
    };
  }

  factory ConnectionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionDetailsResponse(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      linkIdentifier: pulumi.Input.fromValue(map['linkIdentifier'] as String),
      memberName: pulumi.Input.fromValue(map['memberName'] as String),
      privateIpAddress: pulumi.Input.fromValue(map['privateIpAddress'] as String),
    );
  }
}

