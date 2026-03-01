// ignore_for_file: unused_element, unnecessary_cast


/// VPN client root certificate of virtual network gateway.
class VpnClientRootCertificate {
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The certificate public data.
  final String publicCertData;

  /// Creates a new [VpnClientRootCertificate].
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [publicCertData] The certificate public data.
  VpnClientRootCertificate({
    this.id,
    this.name,
    required this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'publicCertData': publicCertData,
    };
  }

  factory VpnClientRootCertificate.fromMap(Map<String, dynamic> map) {
    return VpnClientRootCertificate(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      publicCertData: map['publicCertData'] as String,
    );
  }
}

