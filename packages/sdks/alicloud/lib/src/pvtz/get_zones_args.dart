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
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? keyword,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? queryRegionId,
    pulumi.Output<String>? queryVpcId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? searchMode,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      keyword = pulumi.Input.asOptionalInput<String>(keyword),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      queryRegionId = pulumi.Input.asOptionalInput<String>(queryRegionId),
      queryVpcId = pulumi.Input.asOptionalInput<String>(queryVpcId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      searchMode = pulumi.Input.asOptionalInput<String>(searchMode);

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
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      keyword: map['keyword'] == null ? null : pulumi.Output.create<String>(map['keyword'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      queryRegionId: map['queryRegionId'] == null ? null : pulumi.Output.create<String>(map['queryRegionId'] as String),
      queryVpcId: map['queryVpcId'] == null ? null : pulumi.Output.create<String>(map['queryVpcId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      searchMode: map['searchMode'] == null ? null : pulumi.Output.create<String>(map['searchMode'] as String),
    );
  }
}

