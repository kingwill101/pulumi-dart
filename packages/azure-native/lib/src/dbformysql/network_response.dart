// ignore_for_file: unused_element, unnecessary_cast


/// Network related properties of a server
class NetworkResponse {
  /// Delegated subnet resource id used to setup vnet for a server.
  final String? delegatedSubnetResourceId;
  /// Private DNS zone resource id.
  final String? privateDnsZoneResourceId;
  /// Whether or not public network access is allowed for this server. Value is 'Disabled' when server has VNet integration.
  final String? publicNetworkAccess;

  /// Creates a new [NetworkResponse].
  /// [delegatedSubnetResourceId] Delegated subnet resource id used to setup vnet for a server.
  /// [privateDnsZoneResourceId] Private DNS zone resource id.
  /// [publicNetworkAccess] Whether or not public network access is allowed for this server. Value is 'Disabled' when server has VNet integration.
  NetworkResponse({
    this.delegatedSubnetResourceId,
    this.privateDnsZoneResourceId,
    this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegatedSubnetResourceId': ?delegatedSubnetResourceId,
      'privateDnsZoneResourceId': ?privateDnsZoneResourceId,
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory NetworkResponse.fromMap(Map<String, dynamic> map) {
    return NetworkResponse(
      delegatedSubnetResourceId: map['delegatedSubnetResourceId'] == null ? null : map['delegatedSubnetResourceId'] as String,
      privateDnsZoneResourceId: map['privateDnsZoneResourceId'] == null ? null : map['privateDnsZoneResourceId'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
    );
  }
}

