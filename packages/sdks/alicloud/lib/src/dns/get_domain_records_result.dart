// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_records_record.dart';

/// Result data returned by getDomainRecords.
class GetDomainRecordsResult {
  final String domainName;
  final String? hostRecordRegex;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final bool? isLocked;
  final String? line;
  final String? outputFile;
  final List<GetDomainRecordsRecord> records;
  final String? status;
  final String? type;
  final List<String> urls;
  final String? valueRegex;

  /// Creates a new [GetDomainRecordsResult].
  /// [domainName] Required.
  /// [hostRecordRegex] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [isLocked] Optional.
  /// [line] Optional.
  /// [outputFile] Optional.
  /// [records] Required.
  /// [status] Optional.
  /// [type] Optional.
  /// [urls] Required.
  /// [valueRegex] Optional.
  GetDomainRecordsResult({
    required this.domainName,
    this.hostRecordRegex,
    required this.id,
    required this.ids,
    this.isLocked,
    this.line,
    this.outputFile,
    required this.records,
    this.status,
    this.type,
    required this.urls,
    this.valueRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'hostRecordRegex': ?hostRecordRegex,
      'id': id,
      'ids': ids,
      'isLocked': ?isLocked,
      'line': ?line,
      'outputFile': ?outputFile,
      'records': pulumi.Input.encodeList<GetDomainRecordsRecord, Map<String, dynamic>>(records, (value) => value.toMap()),
      'status': ?status,
      'type': ?type,
      'urls': urls,
      'valueRegex': ?valueRegex,
    };
  }

  factory GetDomainRecordsResult.fromMap(Map<String, dynamic> map) {
    return GetDomainRecordsResult(
      domainName: map['domainName'] as String,
      hostRecordRegex: map['hostRecordRegex'] == null ? null : map['hostRecordRegex']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      isLocked: map['isLocked'] == null ? null : map['isLocked']! as bool,
      line: map['line'] == null ? null : map['line']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      records: pulumi.Input.decodeList<GetDomainRecordsRecord>(map['records'], (value) => GetDomainRecordsRecord.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status']! as String,
      type: map['type'] == null ? null : map['type']! as String,
      urls: (map['urls'] as List).cast<String>(),
      valueRegex: map['valueRegex'] == null ? null : map['valueRegex']! as String,
    );
  }
}

