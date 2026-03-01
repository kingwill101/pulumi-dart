// ignore_for_file: unused_element, unnecessary_cast


/// Trusted client certificates of an application gateway.
class ApplicationGatewayTrustedClientCertificateResponse {
  /// Distinguished name of client certificate issuer.
  final String clientCertIssuerDN;
  /// Certificate public data.
  final String? data;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Name of the trusted client certificate that is unique within an Application Gateway.
  final String? name;
  /// The provisioning state of the trusted client certificate resource.
  final String provisioningState;
  /// Type of the resource.
  final String type;
  /// Validated certificate data.
  final String validatedCertData;

  /// Creates a new [ApplicationGatewayTrustedClientCertificateResponse].
  /// [clientCertIssuerDN] Distinguished name of client certificate issuer.
  /// [data] Certificate public data.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the trusted client certificate that is unique within an Application Gateway.
  /// [provisioningState] The provisioning state of the trusted client certificate resource.
  /// [type] Type of the resource.
  /// [validatedCertData] Validated certificate data.
  ApplicationGatewayTrustedClientCertificateResponse({
    required this.clientCertIssuerDN,
    this.data,
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    required this.type,
    required this.validatedCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertIssuerDN': clientCertIssuerDN,
      'data': ?data,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
      'validatedCertData': validatedCertData,
    };
  }

  factory ApplicationGatewayTrustedClientCertificateResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayTrustedClientCertificateResponse(
      clientCertIssuerDN: map['clientCertIssuerDN'] as String,
      data: map['data'] == null ? null : map['data'] as String,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
      validatedCertData: map['validatedCertData'] as String,
    );
  }
}

