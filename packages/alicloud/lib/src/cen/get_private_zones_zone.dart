// ignore_for_file: unused_element, unnecessary_cast


class GetPrivateZonesZone {
  /// The access region. The access region is the region of the cloud resource that accesses the PrivateZone service through CEN.
  final String accessRegionId;
  /// The ID of the CEN instance.
  final String cenId;
  /// The service region. The service region is the target region of the PrivateZone service accessed through CEN.
  final String hostRegionId;
  /// The VPC that belongs to the service region.
  final String hostVpcId;
  /// The ID of the private zone. It formats as `<cen_id>:<access_region_id>`.
  final String id;
  /// The DNS IP addresses of the PrivateZone service.
  final String privateZoneDnsServers;
  /// The status of the PrivateZone service, including `Creating`, `Active` and `Deleting`.
  final String status;

  /// Creates a new [GetPrivateZonesZone].
  /// [accessRegionId] The access region. The access region is the region of the cloud resource that accesses the PrivateZone service through CEN.
  /// [cenId] The ID of the CEN instance.
  /// [hostRegionId] The service region. The service region is the target region of the PrivateZone service accessed through CEN.
  /// [hostVpcId] The VPC that belongs to the service region.
  /// [id] The ID of the private zone. It formats as `<cen_id>:<access_region_id>`.
  /// [privateZoneDnsServers] The DNS IP addresses of the PrivateZone service.
  /// [status] The status of the PrivateZone service, including `Creating`, `Active` and `Deleting`.
  GetPrivateZonesZone({
    required this.accessRegionId,
    required this.cenId,
    required this.hostRegionId,
    required this.hostVpcId,
    required this.id,
    required this.privateZoneDnsServers,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRegionId': accessRegionId,
      'cenId': cenId,
      'hostRegionId': hostRegionId,
      'hostVpcId': hostVpcId,
      'id': id,
      'privateZoneDnsServers': privateZoneDnsServers,
      'status': status,
    };
  }

  factory GetPrivateZonesZone.fromMap(Map<String, dynamic> map) {
    return GetPrivateZonesZone(
      accessRegionId: map['accessRegionId'] as String,
      cenId: map['cenId'] as String,
      hostRegionId: map['hostRegionId'] as String,
      hostVpcId: map['hostVpcId'] as String,
      id: map['id'] as String,
      privateZoneDnsServers: map['privateZoneDnsServers'] as String,
      status: map['status'] as String,
    );
  }
}

