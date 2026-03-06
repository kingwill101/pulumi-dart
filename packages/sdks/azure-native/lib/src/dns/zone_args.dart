// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';
import 'zone_type.dart';

/// {@template pulumi_dns_zone_args_doc}
/// The set of arguments for Zone.
/// {@endtemplate}
/// {@macro pulumi_dns_zone_args_doc}
class ZoneArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// A list of references to virtual networks that register hostnames in this DNS zone. This is a only when ZoneType is Private.
  final pulumi.Input<List<SubResource>>? registrationVirtualNetworks;
  /// A list of references to virtual networks that resolve records in this DNS zone. This is a only when ZoneType is Private.
  final pulumi.Input<List<SubResource>>? resolutionVirtualNetworks;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the DNS zone (without a terminating dot).
  final pulumi.Input<String>? zoneName;
  /// The type of this DNS zone (Public or Private).
  final pulumi.Input<ZoneType>? zoneType;

  /// Creates a new [ZoneArgs].
  /// [location] The geo-location where the resource lives
  /// [registrationVirtualNetworks] A list of references to virtual networks that register hostnames in this DNS zone. This is a only when ZoneType is Private.
  /// [resolutionVirtualNetworks] A list of references to virtual networks that resolve records in this DNS zone. This is a only when ZoneType is Private.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [zoneName] The name of the DNS zone (without a terminating dot).
  /// [zoneType] The type of this DNS zone (Public or Private).
  const ZoneArgs({
    this.location,
    this.registrationVirtualNetworks,
    this.resolutionVirtualNetworks,
    required this.resourceGroupName,
    this.tags,
    this.zoneName,
    this.zoneType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'registrationVirtualNetworks': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(registrationVirtualNetworks, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resolutionVirtualNetworks': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(resolutionVirtualNetworks, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'zoneName': ?zoneName,
      'zoneType': ?pulumi.Input.mapOptionalInputValue<ZoneType, String>(zoneType, (value) => value.wireValue),
    };
  }

  factory ZoneArgs.fromMap(Map<String, dynamic> map) {
    return ZoneArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationVirtualNetworks: (() { final guardedValue = map['registrationVirtualNetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResource>(guardedValue, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resolutionVirtualNetworks: (() { final guardedValue = map['resolutionVirtualNetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResource>(guardedValue, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zoneName: (() { final guardedValue = map['zoneName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneType: (() { final guardedValue = map['zoneType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZoneType.fromValue(guardedValue as String)); })(),
    );
  }
}

