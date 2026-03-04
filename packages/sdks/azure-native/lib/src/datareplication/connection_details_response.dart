// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Private endpoint connection details at member level.
class ConnectionDetailsResponse {
  /// Gets or sets group id.
  final pulumi.Input<String>? groupId;

  /// Gets or sets id.
  final pulumi.Input<String>? id;

  /// Gets or sets link identifier.
  final pulumi.Input<String>? linkIdentifier;

  /// Gets or sets member name.
  final pulumi.Input<String>? memberName;

  /// Gets or sets private IP address.
  final pulumi.Input<String>? privateIpAddress;

  /// Creates a new [ConnectionDetailsResponse].
  /// [groupId] Gets or sets group id.
  /// [id] Gets or sets id.
  /// [linkIdentifier] Gets or sets link identifier.
  /// [memberName] Gets or sets member name.
  /// [privateIpAddress] Gets or sets private IP address.
  ConnectionDetailsResponse({
    this.groupId,
    this.id,
    this.linkIdentifier,
    this.memberName,
    this.privateIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'id': ?id,
      'linkIdentifier': ?linkIdentifier,
      'memberName': ?memberName,
      'privateIpAddress': ?privateIpAddress,
    };
  }

  factory ConnectionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionDetailsResponse(
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linkIdentifier: (() {
        final guardedValue = map['linkIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memberName: (() {
        final guardedValue = map['memberName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateIpAddress: (() {
        final guardedValue = map['privateIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
