// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_zone_bind_vpc.dart';

class GetZonesZone {
  /// The VPCs associated with the zone. **Note:** `bind_vpcs` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<List<GetZonesZoneBindVpc>> bindVpcs;
  /// The time when the zone was created.
  final pulumi.Input<int> createTimestamp;
  final pulumi.Input<String> creationTime;
  /// The ID of the Private Zone.
  final pulumi.Input<String> id;
  /// Indicates whether the zone is a reverse lookup zone.
  final pulumi.Input<bool> isPtr;
  /// The Name of the Zone.
  final pulumi.Input<String> name;
  /// Indicates whether the recursive resolution proxy for subdomain names is enabled.
  final pulumi.Input<String> proxyPattern;
  /// The number of Domain Name System (DNS) records added in the zone.
  final pulumi.Input<int> recordCount;
  /// The description of the zone.
  final pulumi.Input<String> remark;
  /// The ID of the resource group to which the zone belongs.
  final pulumi.Input<String> resourceGroupId;
  /// Indicates whether the secondary Domain Name System (DNS) feature is enabled for the zone. **Note:** `slave_dns` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<bool> slaveDns;
  final pulumi.Input<String> updateTime;
  /// The time when the DNS record was updated.
  final pulumi.Input<int> updateTimestamp;
  /// The ID of the Zone.
  final pulumi.Input<String> zoneId;
  /// The Name of the Private Zone.
  final pulumi.Input<String> zoneName;

  /// Creates a new [GetZonesZone].
  /// [bindVpcs] The VPCs associated with the zone. **Note:** `bind_vpcs` takes effect only if `enable_details` is set to `true`.
  /// [createTimestamp] The time when the zone was created.
  /// [creationTime] Required.
  /// [id] The ID of the Private Zone.
  /// [isPtr] Indicates whether the zone is a reverse lookup zone.
  /// [name] The Name of the Zone.
  /// [proxyPattern] Indicates whether the recursive resolution proxy for subdomain names is enabled.
  /// [recordCount] The number of Domain Name System (DNS) records added in the zone.
  /// [remark] The description of the zone.
  /// [resourceGroupId] The ID of the resource group to which the zone belongs.
  /// [slaveDns] Indicates whether the secondary Domain Name System (DNS) feature is enabled for the zone. **Note:** `slave_dns` takes effect only if `enable_details` is set to `true`.
  /// [updateTime] Required.
  /// [updateTimestamp] The time when the DNS record was updated.
  /// [zoneId] The ID of the Zone.
  /// [zoneName] The Name of the Private Zone.
  GetZonesZone({
    required this.bindVpcs,
    required this.createTimestamp,
    required this.creationTime,
    required this.id,
    required this.isPtr,
    required this.name,
    required this.proxyPattern,
    required this.recordCount,
    required this.remark,
    required this.resourceGroupId,
    required this.slaveDns,
    required this.updateTime,
    required this.updateTimestamp,
    required this.zoneId,
    required this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindVpcs': pulumi.Input.mapInputValue<List<GetZonesZoneBindVpc>, List<Map<String, dynamic>>>(bindVpcs, (value) => pulumi.Input.encodeList<GetZonesZoneBindVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTimestamp': createTimestamp,
      'creationTime': creationTime,
      'id': id,
      'isPtr': isPtr,
      'name': name,
      'proxyPattern': proxyPattern,
      'recordCount': recordCount,
      'remark': remark,
      'resourceGroupId': resourceGroupId,
      'slaveDns': slaveDns,
      'updateTime': updateTime,
      'updateTimestamp': updateTimestamp,
      'zoneId': zoneId,
      'zoneName': zoneName,
    };
  }

  factory GetZonesZone.fromMap(Map<String, dynamic> map) {
    return GetZonesZone(
      bindVpcs: (pulumi.Input.decodeList<GetZonesZoneBindVpc>(map['bindVpcs'], (value) => GetZonesZoneBindVpc.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTimestamp: (map['createTimestamp'] as int).input(),
      creationTime: (map['creationTime'] as String).input(),
      id: (map['id'] as String).input(),
      isPtr: (map['isPtr'] as bool).input(),
      name: (map['name'] as String).input(),
      proxyPattern: (map['proxyPattern'] as String).input(),
      recordCount: (map['recordCount'] as int).input(),
      remark: (map['remark'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      slaveDns: (map['slaveDns'] as bool).input(),
      updateTime: (map['updateTime'] as String).input(),
      updateTimestamp: (map['updateTimestamp'] as int).input(),
      zoneId: (map['zoneId'] as String).input(),
      zoneName: (map['zoneName'] as String).input(),
    );
  }
}

