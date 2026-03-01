// ignore_for_file: unused_element, unnecessary_cast


/// IP Address
class IPAddressResponse {
  /// Address value
  final String? address;
  /// Resource Id
  final String? resourceId;

  /// Creates a new [IPAddressResponse].
  /// [address] Address value
  /// [resourceId] Resource Id
  IPAddressResponse({
    this.address,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'resourceId': ?resourceId,
    };
  }

  factory IPAddressResponse.fromMap(Map<String, dynamic> map) {
    return IPAddressResponse(
      address: map['address'] == null ? null : map['address'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

