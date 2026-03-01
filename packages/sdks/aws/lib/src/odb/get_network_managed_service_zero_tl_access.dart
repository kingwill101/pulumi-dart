// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkManagedServiceZeroTlAccess {
  final String cidr;
  /// The status of the network resource.
  final String status;

  /// Creates a new [GetNetworkManagedServiceZeroTlAccess].
  /// [cidr] Required.
  /// [status] The status of the network resource.
  GetNetworkManagedServiceZeroTlAccess({
    required this.cidr,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'status': status,
    };
  }

  factory GetNetworkManagedServiceZeroTlAccess.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagedServiceZeroTlAccess(
      cidr: map['cidr'] as String,
      status: map['status'] as String,
    );
  }
}

