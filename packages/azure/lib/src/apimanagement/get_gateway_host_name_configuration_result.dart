// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGatewayHostNameConfiguration.
class GetGatewayHostNameConfigurationResult {
  final String apiManagementId;
  /// The ID of the certificate used for TLS connection establishment.
  final String certificateId;
  final String gatewayName;
  /// The host name used for the API Management Gateway Host Name Configuration.
  final String hostName;
  /// Whether HTTP/2.0 is supported.
  final bool http2Enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// Whether the API Management Gateway requests a client certificate.
  final bool requestClientCertificateEnabled;
  /// Whether TLS 1.0 is supported.
  final bool tls10Enabled;
  /// Whether TLS 1.1 is supported.
  final bool tls11Enabled;

  /// Creates a new [GetGatewayHostNameConfigurationResult].
  /// [apiManagementId] Required.
  /// [certificateId] The ID of the certificate used for TLS connection establishment.
  /// [gatewayName] Required.
  /// [hostName] The host name used for the API Management Gateway Host Name Configuration.
  /// [http2Enabled] Whether HTTP/2.0 is supported.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [requestClientCertificateEnabled] Whether the API Management Gateway requests a client certificate.
  /// [tls10Enabled] Whether TLS 1.0 is supported.
  /// [tls11Enabled] Whether TLS 1.1 is supported.
  GetGatewayHostNameConfigurationResult({
    required this.apiManagementId,
    required this.certificateId,
    required this.gatewayName,
    required this.hostName,
    required this.http2Enabled,
    required this.id,
    required this.name,
    required this.requestClientCertificateEnabled,
    required this.tls10Enabled,
    required this.tls11Enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': apiManagementId,
      'certificateId': certificateId,
      'gatewayName': gatewayName,
      'hostName': hostName,
      'http2Enabled': http2Enabled,
      'id': id,
      'name': name,
      'requestClientCertificateEnabled': requestClientCertificateEnabled,
      'tls10Enabled': tls10Enabled,
      'tls11Enabled': tls11Enabled,
    };
  }

  factory GetGatewayHostNameConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayHostNameConfigurationResult(
      apiManagementId: map['apiManagementId'] as String,
      certificateId: map['certificateId'] as String,
      gatewayName: map['gatewayName'] as String,
      hostName: map['hostName'] as String,
      http2Enabled: map['http2Enabled'] as bool,
      id: map['id'] as String,
      name: map['name'] as String,
      requestClientCertificateEnabled: map['requestClientCertificateEnabled'] as bool,
      tls10Enabled: map['tls10Enabled'] as bool,
      tls11Enabled: map['tls11Enabled'] as bool,
    );
  }
}

