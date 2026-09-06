// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionManagedIdentityResponse {
  final pulumi.Input<String?>? clientId;
  final pulumi.Input<String?>? resourceId;

  /// Creates a new [ConnectionManagedIdentityResponse].
  /// [clientId] Optional.
  /// [resourceId] Optional.
  const ConnectionManagedIdentityResponse({
    this.clientId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'resourceId': ?resourceId,
    };
  }

  factory ConnectionManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionManagedIdentityResponse(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
