// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pvtz_get_zones_get_zones_args_doc}
/// Arguments for getZones.
/// {@endtemplate}
/// {@macro pulumi_pvtz_get_zones_get_zones_args_doc}
class GetZonesArgs {
  /// Whether to query the detailed list of resource attributes. Default value: `false`.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Zones IDs.
  final pulumi.Input<List<String>>? ids;
  /// The keyword of the zone name.
  final pulumi.Input<String>? keyword;
  /// The language of the response. Default value: `en`. Valid values: `en`, `zh`.
  final pulumi.Input<String>? lang;
  /// A regex string to filter results by Zone name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The region ID of the virtual private cloud (VPC) associated with the zone.
  final pulumi.Input<String>? queryRegionId;
  /// The ID of the VPC associated with the zone.
  final pulumi.Input<String>? queryVpcId;
  /// The ID of the resource group to which the zone belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The search mode. The value of Keyword is the search scope. Default value: `LIKE`. Valid values:
  /// - `LIKE`: Fuzzy search.
  /// - `EXACT`: Exact search.
  final pulumi.Input<String>? searchMode;

  /// Creates a new [GetZonesArgs].
  /// [enableDetails] Whether to query the detailed list of resource attributes. Default value: `false`.
  /// [ids] A list of Zones IDs.
  /// [keyword] The keyword of the zone name.
  /// [lang] The language of the response. Default value: `en`. Valid values: `en`, `zh`.
  /// [nameRegex] A regex string to filter results by Zone name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [queryRegionId] The region ID of the virtual private cloud (VPC) associated with the zone.
  /// [queryVpcId] The ID of the VPC associated with the zone.
  /// [resourceGroupId] The ID of the resource group to which the zone belongs.
  /// [searchMode] The search mode. The value of Keyword is the search scope. Default value: `LIKE`. Valid values:
  GetZonesArgs({
    this.enableDetails,
    this.ids,
    this.keyword,
    this.lang,
    this.nameRegex,
    this.outputFile,
    this.queryRegionId,
    this.queryVpcId,
    this.resourceGroupId,
    this.searchMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'keyword': ?keyword,
      'lang': ?lang,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'queryRegionId': ?queryRegionId,
      'queryVpcId': ?queryVpcId,
      'resourceGroupId': ?resourceGroupId,
      'searchMode': ?searchMode,
    };
  }

  factory GetZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetZonesArgs(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      keyword: (() { final guardedValue = map['keyword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryRegionId: (() { final guardedValue = map['queryRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryVpcId: (() { final guardedValue = map['queryVpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      searchMode: (() { final guardedValue = map['searchMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

