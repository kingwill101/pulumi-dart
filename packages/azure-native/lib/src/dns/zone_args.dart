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
  ZoneArgs({
    String? location,
    List<SubResource>? registrationVirtualNetworks,
    List<SubResource>? resolutionVirtualNetworks,
    required String resourceGroupName,
    Map<String, String>? tags,
    String? zoneName,
    ZoneType? zoneType,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      registrationVirtualNetworks = pulumi.Input.asOptionalInput<List<SubResource>>(registrationVirtualNetworks),
      resolutionVirtualNetworks = pulumi.Input.asOptionalInput<List<SubResource>>(resolutionVirtualNetworks),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zoneName = pulumi.Input.asOptionalInput<String>(zoneName),
      zoneType = pulumi.Input.asOptionalInput<ZoneType>(zoneType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'registrationVirtualNetworks': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(registrationVirtualNetworks, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resolutionVirtualNetworks': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(resolutionVirtualNetworks, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'zoneName': ?zoneName,
      'zoneType': ?pulumi.Input.mapOptionalInputValue<ZoneType, String>(zoneType, (value) => value.value),
    };
  }

  factory ZoneArgs.fromMap(Map<String, dynamic> map) {
    return ZoneArgs(
      location: map['location'] == null ? null : map['location'] as String,
      registrationVirtualNetworks: map['registrationVirtualNetworks'] == null ? null : pulumi.Input.decodeList<SubResource>(map['registrationVirtualNetworks'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
      resolutionVirtualNetworks: map['resolutionVirtualNetworks'] == null ? null : pulumi.Input.decodeList<SubResource>(map['resolutionVirtualNetworks'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      zoneName: map['zoneName'] == null ? null : map['zoneName'] as String,
      zoneType: map['zoneType'] == null ? null : ZoneType.fromValue(map['zoneType'] as String),
    );
  }
}

