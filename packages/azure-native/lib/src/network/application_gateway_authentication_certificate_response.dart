// ignore_for_file: unused_element, unnecessary_cast


/// Authentication certificates of an application gateway.
class ApplicationGatewayAuthenticationCertificateResponse {
  /// Certificate public data.
  final String? data;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Name of the authentication certificate that is unique within an Application Gateway.
  final String? name;
  /// The provisioning state of the authentication certificate resource.
  final String provisioningState;
  /// Type of the resource.
  final String type;

  /// Creates a new [ApplicationGatewayAuthenticationCertificateResponse].
  /// [data] Certificate public data.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the authentication certificate that is unique within an Application Gateway.
  /// [provisioningState] The provisioning state of the authentication certificate resource.
  /// [type] Type of the resource.
  ApplicationGatewayAuthenticationCertificateResponse({
    this.data,
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ApplicationGatewayAuthenticationCertificateResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayAuthenticationCertificateResponse(
      data: map['data'] == null ? null : map['data'] as String,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

