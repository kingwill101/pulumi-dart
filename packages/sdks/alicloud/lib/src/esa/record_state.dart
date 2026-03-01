// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_auth_conf.dart';
import 'record_data.dart';

/// Input properties used for looking up and filtering Record resources.
class RecordState {
  /// The origin authentication information of the CNAME record. See `auth_conf` below.
  final pulumi.Input<RecordAuthConf>? authConf;
  /// The business scenario of the record for acceleration. Leave the parameter empty if your record is not proxied. Valid values:
  final pulumi.Input<String>? bizName;
  /// The comment of the record. The maximum length is 100 characters.
  final pulumi.Input<String>? comment;
  /// The time when the record was created. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String>? createTime;
  /// The DNS record information. The format of this field varies based on the record type. For more information, see [References](https://www.alibabacloud.com/help/doc-detail/2708761.html?spm=openapi-amp.newDocPublishment.0.0.6a0f281feoeVWr). See `data` below.
  final pulumi.Input<RecordData>? data;
  /// The origin host policy. This policy takes effect when the record type is CNAME. You can set the policy in two modes:
  final pulumi.Input<String>? hostPolicy;
  /// Specifies whether to proxy the record. Only CNAME and A/AAAA records can be proxied. Valid values:
  final pulumi.Input<bool>? proxied;
  /// The record name. This parameter specifies a filter condition for the query.
  final pulumi.Input<String>? recordName;
  /// The type of the DNS record, such as A/AAAA, CNAME, and TXT.
  final pulumi.Input<String>? recordType;
  /// The website ID.
  final pulumi.Input<String>? siteId;
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

  /// Creates a new [RecordState].
  /// [authConf] The origin authentication information of the CNAME record. See `auth_conf` below.
  /// [bizName] The business scenario of the record for acceleration. Leave the parameter empty if your record is not proxied. Valid values:
  /// [comment] The comment of the record. The maximum length is 100 characters.
  /// [createTime] The time when the record was created. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  /// [data] The DNS record information. The format of this field varies based on the record type. For more information, see [References](https://www.alibabacloud.com/help/doc-detail/2708761.html?spm=openapi-amp.newDocPublishment.0.0.6a0f281feoeVWr). See `data` below.
  /// [hostPolicy] The origin host policy. This policy takes effect when the record type is CNAME. You can set the policy in two modes:
  /// [proxied] Specifies whether to proxy the record. Only CNAME and A/AAAA records can be proxied. Valid values:
  /// [recordName] The record name. This parameter specifies a filter condition for the query.
  /// [recordType] The type of the DNS record, such as A/AAAA, CNAME, and TXT.
  /// [siteId] The website ID.
  /// [sourceType] The origin type for the CNAME record. This parameter is required when you add a CNAME record. Valid values:
  /// [ttl] The TTL of the record. Unit: seconds. If the value is 1, the TTL of the record is determined by the system.
  RecordState({
    pulumi.Output<RecordAuthConf>? authConf,
    pulumi.Output<String>? bizName,
    pulumi.Output<String>? comment,
    pulumi.Output<String>? createTime,
    pulumi.Output<RecordData>? data,
    pulumi.Output<String>? hostPolicy,
    pulumi.Output<bool>? proxied,
    pulumi.Output<String>? recordName,
    pulumi.Output<String>? recordType,
    pulumi.Output<String>? siteId,
    pulumi.Output<String>? sourceType,
    pulumi.Output<int>? ttl,
  }) :
      authConf = pulumi.Input.asOptionalInput<RecordAuthConf>(authConf),
      bizName = pulumi.Input.asOptionalInput<String>(bizName),
      comment = pulumi.Input.asOptionalInput<String>(comment),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      data = pulumi.Input.asOptionalInput<RecordData>(data),
      hostPolicy = pulumi.Input.asOptionalInput<String>(hostPolicy),
      proxied = pulumi.Input.asOptionalInput<bool>(proxied),
      recordName = pulumi.Input.asOptionalInput<String>(recordName),
      recordType = pulumi.Input.asOptionalInput<String>(recordType),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      sourceType = pulumi.Input.asOptionalInput<String>(sourceType),
      ttl = pulumi.Input.asOptionalInput<int>(ttl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConf': ?pulumi.Input.mapOptionalInputValue<RecordAuthConf, Map<String, dynamic>>(authConf, (value) => value.toMap()),
      'bizName': ?bizName,
      'comment': ?comment,
      'createTime': ?createTime,
      'data': ?pulumi.Input.mapOptionalInputValue<RecordData, Map<String, dynamic>>(data, (value) => value.toMap()),
      'hostPolicy': ?hostPolicy,
      'proxied': ?proxied,
      'recordName': ?recordName,
      'recordType': ?recordType,
      'siteId': ?siteId,
      'sourceType': ?sourceType,
      'ttl': ?ttl,
    };
  }

  factory RecordState.fromMap(Map<String, dynamic> map) {
    return RecordState(
      authConf: map['authConf'] == null ? null : pulumi.Output.create<RecordAuthConf>(RecordAuthConf.fromMap((map['authConf'] as Map).cast<String, dynamic>())),
      bizName: map['bizName'] == null ? null : pulumi.Output.create<String>(map['bizName'] as String),
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      data: map['data'] == null ? null : pulumi.Output.create<RecordData>(RecordData.fromMap((map['data'] as Map).cast<String, dynamic>())),
      hostPolicy: map['hostPolicy'] == null ? null : pulumi.Output.create<String>(map['hostPolicy'] as String),
      proxied: map['proxied'] == null ? null : pulumi.Output.create<bool>(map['proxied'] as bool),
      recordName: map['recordName'] == null ? null : pulumi.Output.create<String>(map['recordName'] as String),
      recordType: map['recordType'] == null ? null : pulumi.Output.create<String>(map['recordType'] as String),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      sourceType: map['sourceType'] == null ? null : pulumi.Output.create<String>(map['sourceType'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
    );
  }
}

