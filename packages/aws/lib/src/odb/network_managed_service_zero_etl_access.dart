// ignore_for_file: unused_element, unnecessary_cast

class NetworkManagedServiceZeroEtlAccess {
  final String cidr;

  /// The status of the network resource.
  final String status;

  /// Creates a new [NetworkManagedServiceZeroEtlAccess].
  /// [cidr] Required.
  /// [status] The status of the network resource.
  NetworkManagedServiceZeroEtlAccess({
    required this.cidr,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidr'] = cidr;
    map['status'] = status;
    return map;
  }

  factory NetworkManagedServiceZeroEtlAccess.fromMap(Map<String, dynamic> map) {
    return NetworkManagedServiceZeroEtlAccess(
      cidr: map['cidr'] as String,
      status: map['status'] as String,
    );
  }
}
