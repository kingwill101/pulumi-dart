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
    this.direction,
    required this.domainName,
    this.groupId,
    this.ids,
    this.keyWord,
    this.lang,
    this.line,
    this.orderBy,
    this.outputFile,
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
      direction: (() {
        final guardedValue = map['direction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      keyWord: (() {
        final guardedValue = map['keyWord'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      line: (() {
        final guardedValue = map['line'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orderBy: (() {
        final guardedValue = map['orderBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rrKeyWord: (() {
        final guardedValue = map['rrKeyWord'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rrRegex: (() {
        final guardedValue = map['rrRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      searchMode: (() {
        final guardedValue = map['searchMode'];
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
      typeKeyWord: (() {
        final guardedValue = map['typeKeyWord'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      valueKeyWord: (() {
        final guardedValue = map['valueKeyWord'];
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
