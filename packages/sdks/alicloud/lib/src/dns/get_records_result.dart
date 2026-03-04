// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_records_record.dart';

/// Result data returned by getRecords.
class GetRecordsResult {
  /// Name of the domain the record belongs to.
  final String domainName;
  final String? hostRecordRegex;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of record IDs.
  final List<String> ids;
  final bool? isLocked;

  /// ISP line of the record.
  final String? line;
  final String? outputFile;

  /// A list of records. Each element contains the following attributes:
  final List<GetRecordsRecord> records;

  /// Status of the record.
  final String? status;

  /// Type of the record.
  final String? type;

  /// A list of entire URLs. Each item format as `&lt;host_record&gt;.&lt;domain_name&gt;`.
  final List<String> urls;
  final String? valueRegex;

  /// Creates a new [GetRecordsResult].
  /// [domainName] Name of the domain the record belongs to.
  /// [hostRecordRegex] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of record IDs.
  /// [isLocked] Optional.
  /// [line] ISP line of the record.
  /// [outputFile] Optional.
  /// [records] A list of records. Each element contains the following attributes:
  /// [status] Status of the record.
  /// [type] Type of the record.
  /// [urls] A list of entire URLs. Each item format as `&lt;host_record&gt;.&lt;domain_name&gt;`.
  /// [valueRegex] Optional.
  GetRecordsResult({
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
      'records':
          pulumi.Input.encodeList<GetRecordsRecord, Map<String, dynamic>>(
            records,
            (value) => value.toMap(),
          ),
      'status': ?status,
      'type': ?type,
      'urls': urls,
      'valueRegex': ?valueRegex,
    };
  }

  factory GetRecordsResult.fromMap(Map<String, dynamic> map) {
    return GetRecordsResult(
      domainName: map['domainName'] as String,
      hostRecordRegex: (() {
        final guardedValue = map['hostRecordRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      isLocked: (() {
        final guardedValue = map['isLocked'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      line: (() {
        final guardedValue = map['line'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      records: pulumi.Input.decodeList<GetRecordsRecord>(
        map['records']!,
        (value) =>
            GetRecordsRecord.fromMap((value as Map).cast<String, dynamic>()),
      ),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      urls: (map['urls'] as List).cast<String>(),
      valueRegex: (() {
        final guardedValue = map['valueRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
