// ignore_for_file: unused_element, unnecessary_cast


/// Radius client root certificate of P2SVpnServerConfiguration.
class P2SVpnServerConfigRadiusClientRootCertificate {
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The Radius client root certificate thumbprint.
  final String? thumbprint;

  /// Creates a new [P2SVpnServerConfigRadiusClientRootCertificate].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [thumbprint] The Radius client root certificate thumbprint.
  P2SVpnServerConfigRadiusClientRootCertificate({
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

  factory P2SVpnServerConfigRadiusClientRootCertificate.fromMap(Map<String, dynamic> map) {
    return P2SVpnServerConfigRadiusClientRootCertificate(
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

