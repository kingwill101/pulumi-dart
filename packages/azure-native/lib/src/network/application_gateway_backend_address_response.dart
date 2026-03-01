// ignore_for_file: unused_element, unnecessary_cast


/// Backend address of an application gateway.
class ApplicationGatewayBackendAddressResponse {
  /// Fully qualified domain name (FQDN).
  final String? fqdn;
  /// IP address.
  final String? ipAddress;

  /// Creates a new [ApplicationGatewayBackendAddressResponse].
  /// [fqdn] Fully qualified domain name (FQDN).
  /// [ipAddress] IP address.
  ApplicationGatewayBackendAddressResponse({
    this.fqdn,
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'ipAddress': ?ipAddress,
    };
  }

  factory ApplicationGatewayBackendAddressResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayBackendAddressResponse(
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
    );
  }
}

