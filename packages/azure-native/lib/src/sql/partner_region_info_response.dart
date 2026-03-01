// ignore_for_file: unused_element, unnecessary_cast


/// Partner region information for the failover group.
class PartnerRegionInfoResponse {
  /// Geo location of the partner managed instances.
  final String? location;
  /// Replication role of the partner managed instances.
  final String replicationRole;

  /// Creates a new [PartnerRegionInfoResponse].
  /// [location] Geo location of the partner managed instances.
  /// [replicationRole] Replication role of the partner managed instances.
  PartnerRegionInfoResponse({
    this.location,
    required this.replicationRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'replicationRole': replicationRole,
    };
  }

  factory PartnerRegionInfoResponse.fromMap(Map<String, dynamic> map) {
    return PartnerRegionInfoResponse(
      location: map['location'] == null ? null : map['location'] as String,
      replicationRole: map['replicationRole'] as String,
    );
  }
}

