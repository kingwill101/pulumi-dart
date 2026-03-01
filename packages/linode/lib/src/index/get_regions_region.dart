// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regions_region_monitors.dart';
import 'get_regions_region_placement_group_limit.dart';
import 'get_regions_region_resolver.dart';

class GetRegionsRegion {
  /// A list of capabilities of this region.
  final List<String> capabilities;
  /// The country the region resides in.
  final String country;
  /// The unique ID of this Region.
  final String id;
  /// Detailed location information for this Region, including city, state or region, and country.
  final String label;
  /// The monitoring services available in a region.
  final GetRegionsRegionMonitors monitors;
  /// Information about placement groups limits for this region.
  final List<GetRegionsRegionPlacementGroupLimit> placementGroupLimits;
  final List<GetRegionsRegionResolver> resolvers;
  /// The type of this region.
  final String siteType;
  /// This region’s current operational status (ok or outage).
  final String status;

  /// Creates a new [GetRegionsRegion].
  /// [capabilities] A list of capabilities of this region.
  /// [country] The country the region resides in.
  /// [id] The unique ID of this Region.
  /// [label] Detailed location information for this Region, including city, state or region, and country.
  /// [monitors] The monitoring services available in a region.
  /// [placementGroupLimits] Information about placement groups limits for this region.
  /// [resolvers] Required.
  /// [siteType] The type of this region.
  /// [status] This region’s current operational status (ok or outage).
  GetRegionsRegion({
    required this.capabilities,
    required this.country,
    required this.id,
    required this.label,
    required this.monitors,
    required this.placementGroupLimits,
    required this.resolvers,
    required this.siteType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': capabilities,
      'country': country,
      'id': id,
      'label': label,
      'monitors': monitors.toMap(),
      'placementGroupLimits': pulumi.Input.encodeList<GetRegionsRegionPlacementGroupLimit, Map<String, dynamic>>(placementGroupLimits, (value) => value.toMap()),
      'resolvers': pulumi.Input.encodeList<GetRegionsRegionResolver, Map<String, dynamic>>(resolvers, (value) => value.toMap()),
      'siteType': siteType,
      'status': status,
    };
  }

  factory GetRegionsRegion.fromMap(Map<String, dynamic> map) {
    return GetRegionsRegion(
      capabilities: (map['capabilities'] as List).cast<String>(),
      country: map['country'] as String,
      id: map['id'] as String,
      label: map['label'] as String,
      monitors: GetRegionsRegionMonitors.fromMap((map['monitors'] as Map).cast<String, dynamic>()),
      placementGroupLimits: pulumi.Input.decodeList<GetRegionsRegionPlacementGroupLimit>(map['placementGroupLimits'], (value) => GetRegionsRegionPlacementGroupLimit.fromMap((value as Map).cast<String, dynamic>())),
      resolvers: pulumi.Input.decodeList<GetRegionsRegionResolver>(map['resolvers'], (value) => GetRegionsRegionResolver.fromMap((value as Map).cast<String, dynamic>())),
      siteType: map['siteType'] as String,
      status: map['status'] as String,
    );
  }
}

