// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_domain_records_get_domain_records_args_doc}
/// Arguments for getDomainRecords.
/// {@endtemplate}
/// {@macro pulumi_dns_get_domain_records_get_domain_records_args_doc}
class GetDomainRecordsArgs {
  final pulumi.Input<String> domainName;
  final pulumi.Input<String>? hostRecordRegex;
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<bool>? isLocked;
  final pulumi.Input<String>? line;
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<String>? status;
  final pulumi.Input<String>? type;
  final pulumi.Input<String>? valueRegex;

  /// Creates a new [GetDomainRecordsArgs].
  /// [domainName] Required.
  /// [hostRecordRegex] Optional.
  /// [ids] Optional.
  /// [isLocked] Optional.
  /// [line] Optional.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [type] Optional.
  /// [valueRegex] Optional.
  GetDomainRecordsArgs({
    required this.domainName,
    this.hostRecordRegex,
    this.ids,
    this.isLocked,
    this.line,
    this.outputFile,
    this.status,
    this.type,
    this.valueRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'hostRecordRegex': ?hostRecordRegex,
      'ids': ?ids,
      'isLocked': ?isLocked,
      'line': ?line,
      'outputFile': ?outputFile,
      'status': ?status,
      'type': ?type,
      'valueRegex': ?valueRegex,
    };
  }

  factory GetDomainRecordsArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainRecordsArgs(
      domainName: (map['domainName'] as String).input(),
      hostRecordRegex: map['hostRecordRegex'] == null ? null : (map['hostRecordRegex']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      isLocked: map['isLocked'] == null ? null : (map['isLocked']! as bool).input(),
      line: map['line'] == null ? null : (map['line']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      valueRegex: map['valueRegex'] == null ? null : (map['valueRegex']! as String).input(),
    );
  }
}

