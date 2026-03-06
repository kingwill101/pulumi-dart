// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A managed identity assigned by the user.
class AzureResourceManagerUserAssignedIdentity {
  /// The active directory client identifier for this principal.
  final pulumi.Input<String>? clientId;
  /// The active directory identifier for this principal.
  final pulumi.Input<String>? principalId;

  /// Creates a new [AzureResourceManagerUserAssignedIdentity].
  /// [clientId] The active directory client identifier for this principal.
  /// [principalId] The active directory identifier for this principal.
  const AzureResourceManagerUserAssignedIdentity({
    this.clientId,
    this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'principalId': ?principalId,
    };
  }

  factory AzureResourceManagerUserAssignedIdentity.fromMap(Map<String, dynamic> map) {
    return AzureResourceManagerUserAssignedIdentity(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

