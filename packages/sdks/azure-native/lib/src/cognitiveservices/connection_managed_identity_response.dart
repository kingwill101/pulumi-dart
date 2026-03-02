// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionManagedIdentityResponse {
  final pulumi.Input<String>? clientId;
  final pulumi.Input<String>? resourceId;

  /// Creates a new [ConnectionManagedIdentityResponse].
  /// [clientId] Optional.
  /// [resourceId] Optional.
  ConnectionManagedIdentityResponse({
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
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
    );
  }
}

