// ignore_for_file: unused_element, unnecessary_cast


/// VPN client revoked certificate of virtual network gateway.
class VpnClientRevokedCertificateResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the VPN client revoked certificate resource.
  final String provisioningState;
  /// The revoked VPN client certificate thumbprint.
  final String? thumbprint;

  /// Creates a new [VpnClientRevokedCertificateResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the VPN client revoked certificate resource.
  /// [thumbprint] The revoked VPN client certificate thumbprint.
  VpnClientRevokedCertificateResponse({
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'thumbprint': ?thumbprint,
    };
  }

  factory VpnClientRevokedCertificateResponse.fromMap(Map<String, dynamic> map) {
    return VpnClientRevokedCertificateResponse(
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

