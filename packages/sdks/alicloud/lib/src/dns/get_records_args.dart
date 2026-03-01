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
    required pulumi.Output<String> domainName,
    pulumi.Output<String>? hostRecordRegex,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<bool>? isLocked,
    pulumi.Output<String>? line,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<String>? type,
    pulumi.Output<String>? valueRegex,
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

  factory GetRecordsArgs.fromMap(Map<String, dynamic> map) {
    return GetRecordsArgs(
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      hostRecordRegex: map['hostRecordRegex'] == null ? null : pulumi.Output.create<String>(map['hostRecordRegex'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      isLocked: map['isLocked'] == null ? null : pulumi.Output.create<bool>(map['isLocked'] as bool),
      line: map['line'] == null ? null : pulumi.Output.create<String>(map['line'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      valueRegex: map['valueRegex'] == null ? null : pulumi.Output.create<String>(map['valueRegex'] as String),
    );
  }
}

