// ignore_for_file: unused_element, unnecessary_cast


/// IpamPool prefix allocation reference.
class IpamPoolPrefixAllocation {
  /// Resource id of the associated Azure IpamPool resource.
  final String? id;
  /// Number of IP addresses to allocate.
  final String? numberOfIpAddresses;

  /// Creates a new [IpamPoolPrefixAllocation].
  /// [id] Resource id of the associated Azure IpamPool resource.
  /// [numberOfIpAddresses] Number of IP addresses to allocate.
  IpamPoolPrefixAllocation({
    this.id,
    this.numberOfIpAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'numberOfIpAddresses': ?numberOfIpAddresses,
    };
  }

  factory IpamPoolPrefixAllocation.fromMap(Map<String, dynamic> map) {
    return IpamPoolPrefixAllocation(
      id: map['id'] == null ? null : map['id'] as String,
      numberOfIpAddresses: map['numberOfIpAddresses'] == null ? null : map['numberOfIpAddresses'] as String,
    );
  }
}

