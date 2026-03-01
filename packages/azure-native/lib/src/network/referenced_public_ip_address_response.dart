// ignore_for_file: unused_element, unnecessary_cast


/// Reference to a public IP address.
class ReferencedPublicIpAddressResponse {
  /// The PublicIPAddress Reference.
  final String? id;

  /// Creates a new [ReferencedPublicIpAddressResponse].
  /// [id] The PublicIPAddress Reference.
  ReferencedPublicIpAddressResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ReferencedPublicIpAddressResponse.fromMap(Map<String, dynamic> map) {
    return ReferencedPublicIpAddressResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

