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
  ManagedIdentityPropertiesResponse({
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
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      managedIdentityName: map['managedIdentityName'] == null ? null : (map['managedIdentityName']! as String).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (map['resourceGroup']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

