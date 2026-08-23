// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedIdentityPropertiesResponse {
  final pulumi.Input<String>? clientId;
  final pulumi.Input<String>? managedIdentityName;
  final pulumi.Input<String>? principalId;
  final pulumi.Input<String>? resourceGroup;
  final pulumi.Input<String>? subscriptionId;
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ManagedIdentityPropertiesResponse].
  /// [clientId] Optional.
  /// [managedIdentityName] Optional.
  /// [principalId] Optional.
  /// [resourceGroup] Optional.
  /// [subscriptionId] Optional.
  /// [tenantId] Optional.
  const ManagedIdentityPropertiesResponse({
    this.clientId,
    this.managedIdentityName,
    this.principalId,
    this.resourceGroup,
    this.subscriptionId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'managedIdentityName': ?managedIdentityName,
      'principalId': ?principalId,
      'resourceGroup': ?resourceGroup,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
    };
  }

  factory ManagedIdentityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityPropertiesResponse(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedIdentityName: (() { final guardedValue = map['managedIdentityName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
