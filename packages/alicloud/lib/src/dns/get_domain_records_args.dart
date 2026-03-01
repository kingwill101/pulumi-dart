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
    required String domainName,
    String? hostRecordRegex,
    List<String>? ids,
    bool? isLocked,
    String? line,
    String? outputFile,
    String? status,
    String? type,
    String? valueRegex,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      hostRecordRegex = pulumi.Input.asOptionalInput<String>(hostRecordRegex),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      isLocked = pulumi.Input.asOptionalInput<bool>(isLocked),
      line = pulumi.Input.asOptionalInput<String>(line),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      type = pulumi.Input.asOptionalInput<String>(type),
      valueRegex = pulumi.Input.asOptionalInput<String>(valueRegex);

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
      domainName: map['domainName'] as String,
      hostRecordRegex: map['hostRecordRegex'] == null ? null : map['hostRecordRegex'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      isLocked: map['isLocked'] == null ? null : map['isLocked'] as bool,
      line: map['line'] == null ? null : map['line'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      valueRegex: map['valueRegex'] == null ? null : map['valueRegex'] as String,
    );
  }
}

