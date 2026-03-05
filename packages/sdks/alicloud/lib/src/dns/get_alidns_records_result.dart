// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alidns_records_record.dart';

/// Result data returned by getAlidnsRecords.
class GetAlidnsRecordsResult {
  final String? direction;
  /// Name of the domain record belongs to.
  final String domainName;
  final int? groupId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of record IDs.
  final List<String> ids;
  final String? keyWord;
  final String? lang;
  /// ISP line of the record.
  final String? line;
  final String? orderBy;
  final String? outputFile;
  /// A list of records. Each element contains the following attributes:
  final List<GetAlidnsRecordsRecord> records;
  final String? rrKeyWord;
  final String? rrRegex;
  final String? searchMode;
  /// Status of the record.
  final String? status;
  /// Type of the record.
  final String? type;
  final String? typeKeyWord;
  final String? valueKeyWord;
  final String? valueRegex;

  /// Creates a new [GetAlidnsRecordsResult].
  /// [direction] Optional.
  /// [domainName] Name of the domain record belongs to.
  /// [groupId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of record IDs.
  /// [keyWord] Optional.
  /// [lang] Optional.
  /// [line] ISP line of the record.
  /// [orderBy] Optional.
  /// [outputFile] Optional.
  /// [records] A list of records. Each element contains the following attributes:
  /// [rrKeyWord] Optional.
  /// [rrRegex] Optional.
  /// [searchMode] Optional.
  /// [status] Status of the record.
  /// [type] Type of the record.
  /// [typeKeyWord] Optional.
  /// [valueKeyWord] Optional.
  /// [valueRegex] Optional.
  GetAlidnsRecordsResult({
    this.direction,
    required this.domainName,
    this.groupId,
    required this.id,
    required this.ids,
    this.keyWord,
    this.lang,
    this.line,
    this.orderBy,
    this.outputFile,
    required this.records,
    this.rrKeyWord,
    this.rrRegex,
    this.searchMode,
    this.status,
    this.type,
    this.typeKeyWord,
    this.valueKeyWord,
    this.valueRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'domainName': domainName,
      'groupId': ?groupId,
      'id': id,
      'ids': ids,
      'keyWord': ?keyWord,
      'lang': ?lang,
      'line': ?line,
      'orderBy': ?orderBy,
      'outputFile': ?outputFile,
      'records': pulumi.Input.encodeList<GetAlidnsRecordsRecord, Map<String, dynamic>>(records, (value) => value.toMap()),
      'rrKeyWord': ?rrKeyWord,
      'rrRegex': ?rrRegex,
      'searchMode': ?searchMode,
      'status': ?status,
      'type': ?type,
      'typeKeyWord': ?typeKeyWord,
      'valueKeyWord': ?valueKeyWord,
      'valueRegex': ?valueRegex,
    };
  }

  factory GetAlidnsRecordsResult.fromMap(Map<String, dynamic> map) {
    return GetAlidnsRecordsResult(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: map['domainName'] as String,
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return guardedValue as int; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyWord: (() { final guardedValue = map['keyWord']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return guardedValue as String; })(),
      line: (() { final guardedValue = map['line']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      records: pulumi.Input.decodeList<GetAlidnsRecordsRecord>(map['records']!, (value) => GetAlidnsRecordsRecord.fromMap((value as Map).cast<String, dynamic>())),
      rrKeyWord: (() { final guardedValue = map['rrKeyWord']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rrRegex: (() { final guardedValue = map['rrRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      searchMode: (() { final guardedValue = map['searchMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      typeKeyWord: (() { final guardedValue = map['typeKeyWord']; if (guardedValue == null) return null; return guardedValue as String; })(),
      valueKeyWord: (() { final guardedValue = map['valueKeyWord']; if (guardedValue == null) return null; return guardedValue as String; })(),
      valueRegex: (() { final guardedValue = map['valueRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

