// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_alidns_records_get_alidns_records_args_doc}
/// Arguments for getAlidnsRecords.
/// {@endtemplate}
/// {@macro pulumi_dns_get_alidns_records_get_alidns_records_args_doc}
class GetAlidnsRecordsArgs {
  /// Sorting direction. Valid values: `DESC`,`ASC`. Default to `AESC`.
  final pulumi.Input<String>? direction;
  /// The domain name associated to the records.
  final pulumi.Input<String> domainName;
  /// Domain name group ID.
  final pulumi.Input<int>? groupId;
  /// A list of record IDs.
  final pulumi.Input<List<String>>? ids;
  /// Keywords.
  final pulumi.Input<String>? keyWord;
  /// User language.
  final pulumi.Input<String>? lang;
  /// ISP line. For checking all resolution lines enumeration please visit [Alibaba Cloud DNS doc](https://www.alibabacloud.com/help/en/dns/resolve-line-enumeration)
  final pulumi.Input<String>? line;
  /// Sort by. Sort from newest to oldest according to the time added by resolution.
  final pulumi.Input<String>? orderBy;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The keywords recorded by the host are searched according to the `%RRKeyWord%` mode, and are not case sensitive.
  final pulumi.Input<String>? rrKeyWord;
  /// Host record regex.
  final pulumi.Input<String>? rrRegex;
  /// Search mode, Valid values: `LIKE`, `EXACT`, `ADVANCED`, `LIKE` (fuzzy), `EXACT` (accurate) search supports KeyWord field, `ADVANCED` (advanced) mode supports other fields.
  final pulumi.Input<String>? searchMode;
  /// Record status. Valid values: `ENABLE` and `DISABLE`.
  final pulumi.Input<String>? status;
  /// Record type. Valid values: `A`, `NS`, `MX`, `TXT`, `CNAME`, `SRV`, `AAAA`, `REDIRECT_URL`, `FORWORD_URL` .
  final pulumi.Input<String>? type;
  /// Analyze type keywords, search by full match, not case sensitive.
  final pulumi.Input<String>? typeKeyWord;
  /// The keywords of the recorded value are searched according to the `%ValueKeyWord%` mode, and are not case sensitive.
  final pulumi.Input<String>? valueKeyWord;
  /// Host record value regex.
  final pulumi.Input<String>? valueRegex;

  /// Creates a new [GetAlidnsRecordsArgs].
  /// [direction] Sorting direction. Valid values: `DESC`,`ASC`. Default to `AESC`.
  /// [domainName] The domain name associated to the records.
  /// [groupId] Domain name group ID.
  /// [ids] A list of record IDs.
  /// [keyWord] Keywords.
  /// [lang] User language.
  /// [line] ISP line. For checking all resolution lines enumeration please visit [Alibaba Cloud DNS doc](https://www.alibabacloud.com/help/en/dns/resolve-line-enumeration)
  /// [orderBy] Sort by. Sort from newest to oldest according to the time added by resolution.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [rrKeyWord] The keywords recorded by the host are searched according to the `%RRKeyWord%` mode, and are not case sensitive.
  /// [rrRegex] Host record regex.
  /// [searchMode] Search mode, Valid values: `LIKE`, `EXACT`, `ADVANCED`, `LIKE` (fuzzy), `EXACT` (accurate) search supports KeyWord field, `ADVANCED` (advanced) mode supports other fields.
  /// [status] Record status. Valid values: `ENABLE` and `DISABLE`.
  /// [type] Record type. Valid values: `A`, `NS`, `MX`, `TXT`, `CNAME`, `SRV`, `AAAA`, `REDIRECT_URL`, `FORWORD_URL` .
  /// [typeKeyWord] Analyze type keywords, search by full match, not case sensitive.
  /// [valueKeyWord] The keywords of the recorded value are searched according to the `%ValueKeyWord%` mode, and are not case sensitive.
  /// [valueRegex] Host record value regex.
  GetAlidnsRecordsArgs({
    pulumi.Output<String>? direction,
    required pulumi.Output<String> domainName,
    pulumi.Output<int>? groupId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? keyWord,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? line,
    pulumi.Output<String>? orderBy,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? rrKeyWord,
    pulumi.Output<String>? rrRegex,
    pulumi.Output<String>? searchMode,
    pulumi.Output<String>? status,
    pulumi.Output<String>? type,
    pulumi.Output<String>? typeKeyWord,
    pulumi.Output<String>? valueKeyWord,
    pulumi.Output<String>? valueRegex,
  }) :
      direction = pulumi.Input.asOptionalInput<String>(direction),
      domainName = pulumi.Input.asInput<String>(domainName),
      groupId = pulumi.Input.asOptionalInput<int>(groupId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      keyWord = pulumi.Input.asOptionalInput<String>(keyWord),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      line = pulumi.Input.asOptionalInput<String>(line),
      orderBy = pulumi.Input.asOptionalInput<String>(orderBy),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      rrKeyWord = pulumi.Input.asOptionalInput<String>(rrKeyWord),
      rrRegex = pulumi.Input.asOptionalInput<String>(rrRegex),
      searchMode = pulumi.Input.asOptionalInput<String>(searchMode),
      status = pulumi.Input.asOptionalInput<String>(status),
      type = pulumi.Input.asOptionalInput<String>(type),
      typeKeyWord = pulumi.Input.asOptionalInput<String>(typeKeyWord),
      valueKeyWord = pulumi.Input.asOptionalInput<String>(valueKeyWord),
      valueRegex = pulumi.Input.asOptionalInput<String>(valueRegex);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'domainName': domainName,
      'groupId': ?groupId,
      'ids': ?ids,
      'keyWord': ?keyWord,
      'lang': ?lang,
      'line': ?line,
      'orderBy': ?orderBy,
      'outputFile': ?outputFile,
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

  factory GetAlidnsRecordsArgs.fromMap(Map<String, dynamic> map) {
    return GetAlidnsRecordsArgs(
      direction: map['direction'] == null ? null : pulumi.Output.create<String>(map['direction'] as String),
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<int>(map['groupId'] as int),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      keyWord: map['keyWord'] == null ? null : pulumi.Output.create<String>(map['keyWord'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      line: map['line'] == null ? null : pulumi.Output.create<String>(map['line'] as String),
      orderBy: map['orderBy'] == null ? null : pulumi.Output.create<String>(map['orderBy'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      rrKeyWord: map['rrKeyWord'] == null ? null : pulumi.Output.create<String>(map['rrKeyWord'] as String),
      rrRegex: map['rrRegex'] == null ? null : pulumi.Output.create<String>(map['rrRegex'] as String),
      searchMode: map['searchMode'] == null ? null : pulumi.Output.create<String>(map['searchMode'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      typeKeyWord: map['typeKeyWord'] == null ? null : pulumi.Output.create<String>(map['typeKeyWord'] as String),
      valueKeyWord: map['valueKeyWord'] == null ? null : pulumi.Output.create<String>(map['valueKeyWord'] as String),
      valueRegex: map['valueRegex'] == null ? null : pulumi.Output.create<String>(map['valueRegex'] as String),
    );
  }
}

