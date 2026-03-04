// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_records_get_records_args_doc}
/// Arguments for getRecords.
/// {@endtemplate}
/// {@macro pulumi_dns_get_records_get_records_args_doc}
class GetRecordsArgs {
  /// The domain name associated to the records.
  final pulumi.Input<String> domainName;

  /// Host record regex.
  final pulumi.Input<String>? hostRecordRegex;

  /// A list of record IDs.
  final pulumi.Input<List<String>>? ids;

  /// Whether the record is locked or not.
  final pulumi.Input<bool>? isLocked;

  /// ISP line. Valid items are `default`, `telecom`, `unicom`, `mobile`, `oversea`, `edu`, `drpeng`, `btvn`, .etc. For checking all resolution lines enumeration please visit [Alibaba Cloud DNS doc](https://www.alibabacloud.com/help/en/doc-detail/29807.htm)
  final pulumi.Input<String>? line;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Record status. Valid items are `ENABLE` and `DISABLE`.
  final pulumi.Input<String>? status;

  /// Record type. Valid items are `A`, `NS`, `MX`, `TXT`, `CNAME`, `SRV`, `AAAA`, `REDIRECT_URL`, `FORWORD_URL` .
  final pulumi.Input<String>? type;

  /// Host record value regex.
  final pulumi.Input<String>? valueRegex;

  /// Creates a new [GetRecordsArgs].
  /// [domainName] The domain name associated to the records.
  /// [hostRecordRegex] Host record regex.
  /// [ids] A list of record IDs.
  /// [isLocked] Whether the record is locked or not.
  /// [line] ISP line. Valid items are `default`, `telecom`, `unicom`, `mobile`, `oversea`, `edu`, `drpeng`, `btvn`, .etc. For checking all resolution lines enumeration please visit [Alibaba Cloud DNS doc](https://www.alibabacloud.com/help/en/doc-detail/29807.htm)
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] Record status. Valid items are `ENABLE` and `DISABLE`.
  /// [type] Record type. Valid items are `A`, `NS`, `MX`, `TXT`, `CNAME`, `SRV`, `AAAA`, `REDIRECT_URL`, `FORWORD_URL` .
  /// [valueRegex] Host record value regex.
  GetRecordsArgs({
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

  factory GetRecordsArgs.fromMap(Map<String, dynamic> map) {
    return GetRecordsArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      hostRecordRegex: (() {
        final guardedValue = map['hostRecordRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      isLocked: (() {
        final guardedValue = map['isLocked'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      line: (() {
        final guardedValue = map['line'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      valueRegex: (() {
        final guardedValue = map['valueRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
