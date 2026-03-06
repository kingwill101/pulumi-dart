// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AuditLogConfig resources.
class AuditLogConfigState {
  /// Instance Creation Time.
  final pulumi.Input<String>? createTime;
  /// Indicates Whether to Enable the Audit Log.  Valid value:
  /// * true: Default Value, Open.
  /// * false: Closed.
  ///
  /// Note: When the Instance for the Cluster Architecture Or Read/Write Split Architecture, at the Same Time to Open Or Close the Data Node and the Proxy Node of the Audit Log Doesn't Support Separate Open.
  final pulumi.Input<bool>? dbAudit;
  /// Instance ID, Call the Describeinstances Get.
  final pulumi.Input<String>? instanceId;
  /// Audit Log Retention Period Value: 1~365.
  ///
  /// &gt; **NOTE:** When the Instance dbaudit Value Is Set to True, This Parameter Entry into Force. The Parameter Setting of the Current Region of All a Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance for a Data Entry into Force.
  final pulumi.Input<int>? retention;
  /// The status of the resource.
  final pulumi.Input<String>? status;

  /// Creates a new [AuditLogConfigState].
  /// [createTime] Instance Creation Time.
  /// [dbAudit] Indicates Whether to Enable the Audit Log.  Valid value:
  /// [instanceId] Instance ID, Call the Describeinstances Get.
  /// [retention] Audit Log Retention Period Value: 1~365.
  /// [status] The status of the resource.
  const AuditLogConfigState({
    this.createTime,
    this.dbAudit,
    this.instanceId,
    this.retention,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dbAudit': ?dbAudit,
      'instanceId': ?instanceId,
      'retention': ?retention,
      'status': ?status,
    };
  }

  factory AuditLogConfigState.fromMap(Map<String, dynamic> map) {
    return AuditLogConfigState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbAudit: (() { final guardedValue = map['dbAudit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retention: (() { final guardedValue = map['retention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

