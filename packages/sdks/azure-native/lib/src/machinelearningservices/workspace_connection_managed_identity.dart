// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceConnectionManagedIdentity {
  final pulumi.Input<String>? clientId;
  final pulumi.Input<String>? resourceId;

  /// Creates a new [WorkspaceConnectionManagedIdentity].
  /// [clientId] Optional.
  /// [resourceId] Optional.
  WorkspaceConnectionManagedIdentity({
    this.clientId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'resourceId': ?resourceId,
    };
  }

  factory WorkspaceConnectionManagedIdentity.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionManagedIdentity(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

