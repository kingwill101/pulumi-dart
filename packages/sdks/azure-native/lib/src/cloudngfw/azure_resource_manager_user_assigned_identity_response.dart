// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A managed identity assigned by the user.
class AzureResourceManagerUserAssignedIdentityResponse {
  /// The active directory client identifier for this principal.
  final pulumi.Input<String>? clientId;
  /// The active directory identifier for this principal.
  final pulumi.Input<String>? principalId;

  /// Creates a new [AzureResourceManagerUserAssignedIdentityResponse].
  /// [clientId] The active directory client identifier for this principal.
  /// [principalId] The active directory identifier for this principal.
  AzureResourceManagerUserAssignedIdentityResponse({
    this.clientId,
    this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'principalId': ?principalId,
    };
  }

  factory AzureResourceManagerUserAssignedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return AzureResourceManagerUserAssignedIdentityResponse(
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      principalId: map['principalId'] == null ? null : (map['principalId'] as String).input(),
    );
  }
}

