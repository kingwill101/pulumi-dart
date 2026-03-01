// ignore_for_file: unused_element, unnecessary_cast


class ManagedIdentityPropertiesResponse {
  final String? clientId;
  final String? managedIdentityName;
  final String? principalId;
  final String? resourceGroup;
  final String? subscriptionId;
  final String? tenantId;

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
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      managedIdentityName: map['managedIdentityName'] == null ? null : map['managedIdentityName'] as String,
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      resourceGroup: map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

