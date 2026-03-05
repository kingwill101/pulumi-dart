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
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyword: (() { final guardedValue = map['keyword']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queryRegionId: (() { final guardedValue = map['queryRegionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queryVpcId: (() { final guardedValue = map['queryVpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      searchMode: (() { final guardedValue = map['searchMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: pulumi.Input.decodeList<GetZonesZone>(map['zones']!, (value) => GetZonesZone.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

