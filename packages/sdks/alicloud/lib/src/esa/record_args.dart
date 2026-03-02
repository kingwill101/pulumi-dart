// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_auth_conf.dart';
import 'record_data.dart';

/// {@template pulumi_esa_record_record_args_doc}
/// The set of arguments for Record.
/// {@endtemplate}
/// {@macro pulumi_esa_record_record_args_doc}
class RecordArgs {
  /// The origin authentication information of the CNAME record. See `auth_conf` below.
  final pulumi.Input<RecordAuthConf>? authConf;
  /// The business scenario of the record for acceleration. Leave the parameter empty if your record is not proxied. Valid values:
  final pulumi.Input<String>? bizName;
  /// The comment of the record. The maximum length is 100 characters.
  final pulumi.Input<String>? comment;
  /// The DNS record information. The format of this field varies based on the record type. For more information, see [References](https://www.alibabacloud.com/help/doc-detail/2708761.html?spm=openapi-amp.newDocPublishment.0.0.6a0f281feoeVWr). See `data` below.
  final pulumi.Input<RecordData> data;
  /// The origin host policy. This policy takes effect when the record type is CNAME. You can set the policy in two modes:
  final pulumi.Input<String>? hostPolicy;
  /// Specifies whether to proxy the record. Only CNAME and A/AAAA records can be proxied. Valid values:
  final pulumi.Input<bool>? proxied;
  /// The record name. This parameter specifies a filter condition for the query.
  final pulumi.Input<String> recordName;
  /// The type of the DNS record, such as A/AAAA, CNAME, and TXT.
  final pulumi.Input<String> recordType;
  /// The website ID.
  final pulumi.Input<String> siteId;
  /// The origin type for the CNAME record. This parameter is required when you add a CNAME record. Valid values:
  /// - `OSS`: OSS bucket.
  /// - `S3`: S3 bucket.
  /// - `LB`: load balancer.
  /// - `OP`: origin pool.
  /// - `Domain`: domain name.
  /// - If you do not pass this parameter or if you leave its value empty, Domain is used by default.
  final pulumi.Input<String>? sourceType;
  /// The TTL of the record. Unit: seconds. If the value is 1, the TTL of the record is determined by the system.
  final pulumi.Input<int>? ttl;

  /// Creates a new [RecordArgs].
  /// [authConf] The origin authentication information of the CNAME record. See `auth_conf` below.
  /// [bizName] The business scenario of the record for acceleration. Leave the parameter empty if your record is not proxied. Valid values:
  /// [comment] The comment of the record. The maximum length is 100 characters.
  /// [data] The DNS record information. The format of this field varies based on the record type. For more information, see [References](https://www.alibabacloud.com/help/doc-detail/2708761.html?spm=openapi-amp.newDocPublishment.0.0.6a0f281feoeVWr). See `data` below.
  /// [hostPolicy] The origin host policy. This policy takes effect when the record type is CNAME. You can set the policy in two modes:
  /// [proxied] Specifies whether to proxy the record. Only CNAME and A/AAAA records can be proxied. Valid values:
  /// [recordName] The record name. This parameter specifies a filter condition for the query.
  /// [recordType] The type of the DNS record, such as A/AAAA, CNAME, and TXT.
  /// [siteId] The website ID.
  /// [sourceType] The origin type for the CNAME record. This parameter is required when you add a CNAME record. Valid values:
  /// [ttl] The TTL of the record. Unit: seconds. If the value is 1, the TTL of the record is determined by the system.
  RecordArgs({
    this.authConf,
    this.bizName,
    this.comment,
    required this.data,
    this.hostPolicy,
    this.proxied,
    required this.recordName,
    required this.recordType,
    required this.siteId,
    this.sourceType,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConf': ?pulumi.Input.mapOptionalInputValue<RecordAuthConf, Map<String, dynamic>>(authConf, (value) => value.toMap()),
      'bizName': ?bizName,
      'comment': ?comment,
      'data': pulumi.Input.mapInputValue<RecordData, Map<String, dynamic>>(data, (value) => value.toMap()),
      'hostPolicy': ?hostPolicy,
      'proxied': ?proxied,
      'recordName': recordName,
      'recordType': recordType,
      'siteId': siteId,
      'sourceType': ?sourceType,
      'ttl': ?ttl,
    };
  }

  factory RecordArgs.fromMap(Map<String, dynamic> map) {
    return RecordArgs(
      authConf: map['authConf'] == null ? null : (RecordAuthConf.fromMap((map['authConf']! as Map).cast<String, dynamic>())).input(),
      bizName: map['bizName'] == null ? null : (map['bizName']! as String).input(),
      comment: map['comment'] == null ? null : (map['comment']! as String).input(),
      data: (RecordData.fromMap((map['data'] as Map).cast<String, dynamic>())).input(),
      hostPolicy: map['hostPolicy'] == null ? null : (map['hostPolicy']! as String).input(),
      proxied: map['proxied'] == null ? null : (map['proxied']! as bool).input(),
      recordName: (map['recordName'] as String).input(),
      recordType: (map['recordType'] as String).input(),
      siteId: (map['siteId'] as String).input(),
      sourceType: map['sourceType'] == null ? null : (map['sourceType']! as String).input(),
      ttl: map['ttl'] == null ? null : (map['ttl']! as int).input(),
    );
  }
}

