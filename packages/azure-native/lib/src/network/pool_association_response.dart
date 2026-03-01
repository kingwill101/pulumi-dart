// ignore_for_file: unused_element, unnecessary_cast


/// IpamPool association information.
class PoolAssociationResponse {
  /// List of assigned IP address prefixes in the IpamPool of the associated resource.
  final List<String> addressPrefixes;
  /// Creation time of the association.
  final String createdAt;
  final String? description;
  /// Total number of reserved IP addresses of the association.
  final String numberOfReservedIPAddresses;
  /// IpamPool id for which the resource is associated to.
  final String? poolId;
  /// Expire time for IP addresses reserved.
  final String reservationExpiresAt;
  /// List of reserved IP address prefixes in the IpamPool of the associated resource.
  final List<String> reservedPrefixes;
  /// Resource id of the associated Azure resource.
  final String resourceId;
  /// Total number of assigned IP addresses of the association.
  final String totalNumberOfIPAddresses;

  /// Creates a new [PoolAssociationResponse].
  /// [addressPrefixes] List of assigned IP address prefixes in the IpamPool of the associated resource.
  /// [createdAt] Creation time of the association.
  /// [description] Optional.
  /// [numberOfReservedIPAddresses] Total number of reserved IP addresses of the association.
  /// [poolId] IpamPool id for which the resource is associated to.
  /// [reservationExpiresAt] Expire time for IP addresses reserved.
  /// [reservedPrefixes] List of reserved IP address prefixes in the IpamPool of the associated resource.
  /// [resourceId] Resource id of the associated Azure resource.
  /// [totalNumberOfIPAddresses] Total number of assigned IP addresses of the association.
  PoolAssociationResponse({
    required this.addressPrefixes,
    required this.createdAt,
    this.description,
    required this.numberOfReservedIPAddresses,
    this.poolId,
    required this.reservationExpiresAt,
    required this.reservedPrefixes,
    required this.resourceId,
    required this.totalNumberOfIPAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': addressPrefixes,
      'createdAt': createdAt,
      'description': ?description,
      'numberOfReservedIPAddresses': numberOfReservedIPAddresses,
      'poolId': ?poolId,
      'reservationExpiresAt': reservationExpiresAt,
      'reservedPrefixes': reservedPrefixes,
      'resourceId': resourceId,
      'totalNumberOfIPAddresses': totalNumberOfIPAddresses,
    };
  }

  factory PoolAssociationResponse.fromMap(Map<String, dynamic> map) {
    return PoolAssociationResponse(
      addressPrefixes: (map['addressPrefixes'] as List).cast<String>(),
      createdAt: map['createdAt'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      numberOfReservedIPAddresses: map['numberOfReservedIPAddresses'] as String,
      poolId: map['poolId'] == null ? null : map['poolId'] as String,
      reservationExpiresAt: map['reservationExpiresAt'] as String,
      reservedPrefixes: (map['reservedPrefixes'] as List).cast<String>(),
      resourceId: map['resourceId'] as String,
      totalNumberOfIPAddresses: map['totalNumberOfIPAddresses'] as String,
    );
  }
}

