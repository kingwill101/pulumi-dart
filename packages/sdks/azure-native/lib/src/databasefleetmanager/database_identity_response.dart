// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database Identity properties.
class DatabaseIdentityResponse {
  /// Client Id of the database identity.
  final pulumi.Input<String>? clientId;
  /// Principal Id of the database identity.
  final pulumi.Input<String>? principalId;
  /// Resource Id of the database identity.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [DatabaseIdentityResponse].
  /// [clientId] Client Id of the database identity.
  /// [principalId] Principal Id of the database identity.
  /// [resourceId] Resource Id of the database identity.
  const DatabaseIdentityResponse({
    this.clientId,
    this.principalId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'principalId': ?principalId,
      'resourceId': ?resourceId,
    };
  }

  factory DatabaseIdentityResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseIdentityResponse(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
