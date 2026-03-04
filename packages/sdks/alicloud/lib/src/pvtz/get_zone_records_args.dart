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
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      keyword: (() {
        final guardedValue = map['keyword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      searchMode: (() {
        final guardedValue = map['searchMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tag: (() {
        final guardedValue = map['tag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userClientIp: (() {
        final guardedValue = map['userClientIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
