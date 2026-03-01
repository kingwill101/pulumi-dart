// ignore_for_file: unused_element, unnecessary_cast


/// VPN client root certificate of virtual network gateway.
class VpnClientRootCertificateResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the VPN client root certificate resource.
  final String provisioningState;
  /// The certificate public data.
  final String publicCertData;

  /// Creates a new [VpnClientRootCertificateResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the VPN client root certificate resource.
  /// [publicCertData] The certificate public data.
  VpnClientRootCertificateResponse({
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    required this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'publicCertData': publicCertData,
    };
  }

  factory VpnClientRootCertificateResponse.fromMap(Map<String, dynamic> map) {
    return VpnClientRootCertificateResponse(
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      publicCertData: map['publicCertData'] as String,
    );
  }
}

