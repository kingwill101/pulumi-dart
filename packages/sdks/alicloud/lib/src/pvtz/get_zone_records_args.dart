// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pvtz_get_zone_records_get_zone_records_args_doc}
/// Arguments for getZoneRecords.
/// {@endtemplate}
/// {@macro pulumi_pvtz_get_zone_records_get_zone_records_args_doc}
class GetZoneRecordsArgs {
  /// A list of Private Zone Record IDs.
  final pulumi.Input<List<String>>? ids;
  /// The keyword for record rr and value.
  final pulumi.Input<String>? keyword;
  /// The language of the response. Default value: `en`. Valid values: `en`, `zh`.
  final pulumi.Input<String>? lang;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The search mode. Default value: `EXACT`. Valid values:
  /// - `LIKE`: Fuzzy search.
  /// - `EXACT`: Exact search.
  final pulumi.Input<String>? searchMode;
  /// The status of the Resolve record. Valid values:
  /// - `ENABLE`: Enable resolution.
  /// - `DISABLE`: Pause parsing.
  final pulumi.Input<String>? status;
  /// The tag used to search for DNS records.
  final pulumi.Input<String>? tag;
  /// The IP address of the client.
  final pulumi.Input<String>? userClientIp;
  /// The ID of the private zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetZoneRecordsArgs].
  /// [ids] A list of Private Zone Record IDs.
  /// [keyword] The keyword for record rr and value.
  /// [lang] The language of the response. Default value: `en`. Valid values: `en`, `zh`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [searchMode] The search mode. Default value: `EXACT`. Valid values:
  /// [status] The status of the Resolve record. Valid values:
  /// [tag] The tag used to search for DNS records.
  /// [userClientIp] The IP address of the client.
  /// [zoneId] The ID of the private zone.
  GetZoneRecordsArgs({
    this.ids,
    this.keyword,
    this.lang,
    this.outputFile,
    this.searchMode,
    this.status,
    this.tag,
    this.userClientIp,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'keyword': ?keyword,
      'lang': ?lang,
      'outputFile': ?outputFile,
      'searchMode': ?searchMode,
      'status': ?status,
      'tag': ?tag,
      'userClientIp': ?userClientIp,
      'zoneId': zoneId,
    };
  }

  factory GetZoneRecordsArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneRecordsArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      keyword: map['keyword'] == null ? null : (map['keyword']! as String).input(),
      lang: map['lang'] == null ? null : (map['lang']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      searchMode: map['searchMode'] == null ? null : (map['searchMode']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tag: map['tag'] == null ? null : (map['tag']! as String).input(),
      userClientIp: map['userClientIp'] == null ? null : (map['userClientIp']! as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

