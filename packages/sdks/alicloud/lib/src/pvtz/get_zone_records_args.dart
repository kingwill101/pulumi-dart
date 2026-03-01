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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? keyword,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? searchMode,
    pulumi.Output<String>? status,
    pulumi.Output<String>? tag,
    pulumi.Output<String>? userClientIp,
    required pulumi.Output<String> zoneId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      keyword = pulumi.Input.asOptionalInput<String>(keyword),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      searchMode = pulumi.Input.asOptionalInput<String>(searchMode),
      status = pulumi.Input.asOptionalInput<String>(status),
      tag = pulumi.Input.asOptionalInput<String>(tag),
      userClientIp = pulumi.Input.asOptionalInput<String>(userClientIp),
      zoneId = pulumi.Input.asInput<String>(zoneId);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      keyword: map['keyword'] == null ? null : pulumi.Output.create<String>(map['keyword'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      searchMode: map['searchMode'] == null ? null : pulumi.Output.create<String>(map['searchMode'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tag: map['tag'] == null ? null : pulumi.Output.create<String>(map['tag'] as String),
      userClientIp: map['userClientIp'] == null ? null : pulumi.Output.create<String>(map['userClientIp'] as String),
      zoneId: pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

