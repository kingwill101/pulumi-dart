// ignore_for_file: unused_element, unnecessary_cast


/// IP Address
class IPAddress {
  /// Address value
  final String? address;
  /// Resource Id
  final String? resourceId;

  /// Creates a new [IPAddress].
  /// [address] Address value
  /// [resourceId] Resource Id
  IPAddress({
    this.address,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'resourceId': ?resourceId,
    };
  }

  factory IPAddress.fromMap(Map<String, dynamic> map) {
    return IPAddress(
      address: map['address'] == null ? null : map['address'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

