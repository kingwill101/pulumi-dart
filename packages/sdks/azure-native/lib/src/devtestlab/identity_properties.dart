// ignore_for_file: unused_element, unnecessary_cast


/// Properties of a managed identity
class IdentityProperties {
  /// The client secret URL of the identity.
  final String? clientSecretUrl;
  /// The principal id of resource identity.
  final String? principalId;
  /// The tenant identifier of resource.
  final String? tenantId;
  /// Managed identity.
  final String? type;

  /// Creates a new [IdentityProperties].
  /// [clientSecretUrl] The client secret URL of the identity.
  /// [principalId] The principal id of resource identity.
  /// [tenantId] The tenant identifier of resource.
  /// [type] Managed identity.
  IdentityProperties({
    this.clientSecretUrl,
    this.principalId,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientSecretUrl': ?clientSecretUrl,
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory IdentityProperties.fromMap(Map<String, dynamic> map) {
    return IdentityProperties(
      clientSecretUrl: map['clientSecretUrl'] == null ? null : map['clientSecretUrl'] as String,
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

