// ignore_for_file: unused_element, unnecessary_cast


/// VPN client revoked certificate of P2SVpnServerConfiguration.
class P2SVpnServerConfigVpnClientRevokedCertificate {
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The revoked VPN client certificate thumbprint.
  final String? thumbprint;

  /// Creates a new [P2SVpnServerConfigVpnClientRevokedCertificate].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [thumbprint] The revoked VPN client certificate thumbprint.
  P2SVpnServerConfigVpnClientRevokedCertificate({
    this.etag,
    this.id,
    this.name,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'thumbprint': ?thumbprint,
    };
  }

  factory P2SVpnServerConfigVpnClientRevokedCertificate.fromMap(Map<String, dynamic> map) {
    return P2SVpnServerConfigVpnClientRevokedCertificate(
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

