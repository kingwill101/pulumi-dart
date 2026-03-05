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
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      hostRecordRegex: (() { final guardedValue = map['hostRecordRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isLocked: (() { final guardedValue = map['isLocked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      line: (() { final guardedValue = map['line']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueRegex: (() { final guardedValue = map['valueRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

