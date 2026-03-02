// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceConnectionManagedIdentityResponse {
  final pulumi.Input<String>? clientId;
  final pulumi.Input<String>? resourceId;

  /// Creates a new [WorkspaceConnectionManagedIdentityResponse].
  /// [clientId] Optional.
  /// [resourceId] Optional.
  WorkspaceConnectionManagedIdentityResponse({
    this.clientId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'resourceId': ?resourceId,
    };
  }

  factory WorkspaceConnectionManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionManagedIdentityResponse(
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
    );
  }
}

