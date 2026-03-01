// ignore_for_file: unused_element, unnecessary_cast


/// Private Link Association Properties.
class PrivateLinkAssociationPropertiesExpandedResponse {
  /// The rmpl Resource ID.
  final String? privateLink;
  final String? publicNetworkAccess;
  /// The scope of the private link association.
  final String? scope;
  /// The TenantID.
  final String? tenantID;

  /// Creates a new [PrivateLinkAssociationPropertiesExpandedResponse].
  /// [privateLink] The rmpl Resource ID.
  /// [publicNetworkAccess] Optional.
  /// [scope] The scope of the private link association.
  /// [tenantID] The TenantID.
  PrivateLinkAssociationPropertiesExpandedResponse({
    this.privateLink,
    this.publicNetworkAccess,
    this.scope,
    this.tenantID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLink': ?privateLink,
      'publicNetworkAccess': ?publicNetworkAccess,
      'scope': ?scope,
      'tenantID': ?tenantID,
    };
  }

  factory PrivateLinkAssociationPropertiesExpandedResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkAssociationPropertiesExpandedResponse(
      privateLink: map['privateLink'] == null ? null : map['privateLink'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      tenantID: map['tenantID'] == null ? null : map['tenantID'] as String,
    );
  }
}

