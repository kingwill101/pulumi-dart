// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_zone.dart';

/// Result data returned by getZones.
class GetZonesResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? keyword;
  final String? lang;
  final String? nameRegex;
  /// A list of Zone names.
  final List<String> names;
  final String? outputFile;
  final String? queryRegionId;
  final String? queryVpcId;
  /// The ID of the resource group to which the zone belongs.
  final String? resourceGroupId;
  final String? searchMode;
  /// A list of Zone. Each element contains the following attributes:
  final List<GetZonesZone> zones;

  /// Creates a new [GetZonesResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [keyword] Optional.
  /// [lang] Optional.
  /// [nameRegex] Optional.
  /// [names] A list of Zone names.
  /// [outputFile] Optional.
  /// [queryRegionId] Optional.
  /// [queryVpcId] Optional.
  /// [resourceGroupId] The ID of the resource group to which the zone belongs.
  /// [searchMode] Optional.
  /// [zones] A list of Zone. Each element contains the following attributes:
  GetZonesResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.keyword,
    this.lang,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.queryRegionId,
    this.queryVpcId,
    this.resourceGroupId,
    this.searchMode,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'keyword': ?keyword,
      'lang': ?lang,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'queryRegionId': ?queryRegionId,
      'queryVpcId': ?queryVpcId,
      'resourceGroupId': ?resourceGroupId,
      'searchMode': ?searchMode,
      'zones': pulumi.Input.encodeList<GetZonesZone, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory GetZonesResult.fromMap(Map<String, dynamic> map) {
    return GetZonesResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyword: map['keyword'] == null ? null : map['keyword'] as String,
      lang: map['lang'] == null ? null : map['lang'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      queryRegionId: map['queryRegionId'] == null ? null : map['queryRegionId'] as String,
      queryVpcId: map['queryVpcId'] == null ? null : map['queryVpcId'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      searchMode: map['searchMode'] == null ? null : map['searchMode'] as String,
      zones: pulumi.Input.decodeList<GetZonesZone>(map['zones'], (value) => GetZonesZone.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

