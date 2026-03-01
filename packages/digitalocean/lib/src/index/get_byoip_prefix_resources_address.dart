// ignore_for_file: unused_element, unnecessary_cast


class GetByoipPrefixResourcesAddress {
  /// The timestamp when the IP was assigned.
  final String assignedAt;
  /// The unique identifier of the IP address allocation.
  final int id;
  /// The IP address.
  final String ipAddress;
  /// The region where the IP is allocated.
  final String region;

  /// Creates a new [GetByoipPrefixResourcesAddress].
  /// [assignedAt] The timestamp when the IP was assigned.
  /// [id] The unique identifier of the IP address allocation.
  /// [ipAddress] The IP address.
  /// [region] The region where the IP is allocated.
  GetByoipPrefixResourcesAddress({
    required this.assignedAt,
    required this.id,
    required this.ipAddress,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedAt': assignedAt,
      'id': id,
      'ipAddress': ipAddress,
      'region': region,
    };
  }

  factory GetByoipPrefixResourcesAddress.fromMap(Map<String, dynamic> map) {
    return GetByoipPrefixResourcesAddress(
      assignedAt: map['assignedAt'] as String,
      id: map['id'] as int,
      ipAddress: map['ipAddress'] as String,
      region: map['region'] as String,
    );
  }
}

