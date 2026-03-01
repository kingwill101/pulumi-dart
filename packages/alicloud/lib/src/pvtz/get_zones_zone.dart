// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_zone_bind_vpc.dart';

class GetZonesZone {
  /// The VPCs associated with the zone. **Note:** `bind_vpcs` takes effect only if `enable_details` is set to `true`.
  final List<GetZonesZoneBindVpc> bindVpcs;
  /// The time when the zone was created.
  final int createTimestamp;
  final String creationTime;
  /// The ID of the Private Zone.
  final String id;
  /// Indicates whether the zone is a reverse lookup zone.
  final bool isPtr;
  /// The Name of the Zone.
  final String name;
  /// Indicates whether the recursive resolution proxy for subdomain names is enabled.
  final String proxyPattern;
  /// The number of Domain Name System (DNS) records added in the zone.
  final int recordCount;
  /// The description of the zone.
  final String remark;
  /// The ID of the resource group to which the zone belongs.
  final String resourceGroupId;
  /// Indicates whether the secondary Domain Name System (DNS) feature is enabled for the zone. **Note:** `slave_dns` takes effect only if `enable_details` is set to `true`.
  final bool slaveDns;
  final String updateTime;
  /// The time when the DNS record was updated.
  final int updateTimestamp;
  /// The ID of the Zone.
  final String zoneId;
  /// The Name of the Private Zone.
  final String zoneName;

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
      'bindVpcs': pulumi.Input.encodeList<GetZonesZoneBindVpc, Map<String, dynamic>>(bindVpcs, (value) => value.toMap()),
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
      bindVpcs: pulumi.Input.decodeList<GetZonesZoneBindVpc>(map['bindVpcs'], (value) => GetZonesZoneBindVpc.fromMap((value as Map).cast<String, dynamic>())),
      createTimestamp: map['createTimestamp'] as int,
      creationTime: map['creationTime'] as String,
      id: map['id'] as String,
      isPtr: map['isPtr'] as bool,
      name: map['name'] as String,
      proxyPattern: map['proxyPattern'] as String,
      recordCount: map['recordCount'] as int,
      remark: map['remark'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      slaveDns: map['slaveDns'] as bool,
      updateTime: map['updateTime'] as String,
      updateTimestamp: map['updateTimestamp'] as int,
      zoneId: map['zoneId'] as String,
      zoneName: map['zoneName'] as String,
    );
  }
}

