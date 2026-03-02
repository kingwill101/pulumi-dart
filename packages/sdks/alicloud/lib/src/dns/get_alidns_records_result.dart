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
      direction: map['direction'] == null ? null : map['direction']! as String,
      domainName: map['domainName'] as String,
      groupId: map['groupId'] == null ? null : map['groupId']! as int,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyWord: map['keyWord'] == null ? null : map['keyWord']! as String,
      lang: map['lang'] == null ? null : map['lang']! as String,
      line: map['line'] == null ? null : map['line']! as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      records: pulumi.Input.decodeList<GetAlidnsRecordsRecord>(map['records'], (value) => GetAlidnsRecordsRecord.fromMap((value as Map).cast<String, dynamic>())),
      rrKeyWord: map['rrKeyWord'] == null ? null : map['rrKeyWord']! as String,
      rrRegex: map['rrRegex'] == null ? null : map['rrRegex']! as String,
      searchMode: map['searchMode'] == null ? null : map['searchMode']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      type: map['type'] == null ? null : map['type']! as String,
      typeKeyWord: map['typeKeyWord'] == null ? null : map['typeKeyWord']! as String,
      valueKeyWord: map['valueKeyWord'] == null ? null : map['valueKeyWord']! as String,
      valueRegex: map['valueRegex'] == null ? null : map['valueRegex']! as String,
    );
  }
}

