// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPrivateZonesZone {
  /// The access region. The access region is the region of the cloud resource that accesses the PrivateZone service through CEN.
  final pulumi.Input<String> accessRegionId;
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// The service region. The service region is the target region of the PrivateZone service accessed through CEN.
  final pulumi.Input<String> hostRegionId;
  /// The VPC that belongs to the service region.
  final pulumi.Input<String> hostVpcId;
  /// The ID of the private zone. It formats as `<cen_id>:<access_region_id>`.
  final pulumi.Input<String> id;
  /// The DNS IP addresses of the PrivateZone service.
  final pulumi.Input<String> privateZoneDnsServers;
  /// The status of the PrivateZone service, including `Creating`, `Active` and `Deleting`.
  final pulumi.Input<String> status;

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
      accessRegionId: (map['accessRegionId'] as String).input(),
      cenId: (map['cenId'] as String).input(),
      hostRegionId: (map['hostRegionId'] as String).input(),
      hostVpcId: (map['hostVpcId'] as String).input(),
      id: (map['id'] as String).input(),
      privateZoneDnsServers: (map['privateZoneDnsServers'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

