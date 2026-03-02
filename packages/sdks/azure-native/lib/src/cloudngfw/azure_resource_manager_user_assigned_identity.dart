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
  AzureResourceManagerUserAssignedIdentity({
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
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
    );
  }
}

