// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zone_records_record.dart';

/// Result data returned by getZoneRecords.
class GetZoneRecordsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? keyword;
  final String? lang;
  final String? outputFile;

  /// A list of Zone Record. Each element contains the following attributes:
  final List<GetZoneRecordsRecord> records;
  final String? searchMode;

  /// The state of the Private Zone Record.
  final String? status;
  final String? tag;
  final String? userClientIp;
  final String zoneId;

  /// Creates a new [GetZoneRecordsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [keyword] Optional.
  /// [lang] Optional.
  /// [outputFile] Optional.
  /// [records] A list of Zone Record. Each element contains the following attributes:
  /// [searchMode] Optional.
  /// [status] The state of the Private Zone Record.
  /// [tag] Optional.
  /// [userClientIp] Optional.
  /// [zoneId] Required.
  GetZoneRecordsResult({
    required this.id,
    required this.ids,
    this.keyword,
    this.lang,
    this.outputFile,
    required this.records,
    this.searchMode,
    this.status,
    this.tag,
    this.userClientIp,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'keyword': ?keyword,
      'lang': ?lang,
      'outputFile': ?outputFile,
      'records':
          pulumi.Input.encodeList<GetZoneRecordsRecord, Map<String, dynamic>>(
            records,
            (value) => value.toMap(),
          ),
      'searchMode': ?searchMode,
      'status': ?status,
      'tag': ?tag,
      'userClientIp': ?userClientIp,
      'zoneId': zoneId,
    };
  }

  factory GetZoneRecordsResult.fromMap(Map<String, dynamic> map) {
    return GetZoneRecordsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyword: (() {
        final guardedValue = map['keyword'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      records: pulumi.Input.decodeList<GetZoneRecordsRecord>(
        map['records']!,
        (value) => GetZoneRecordsRecord.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      searchMode: (() {
        final guardedValue = map['searchMode'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tag: (() {
        final guardedValue = map['tag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      userClientIp: (() {
        final guardedValue = map['userClientIp'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      zoneId: map['zoneId'] as String,
    );
  }
}
