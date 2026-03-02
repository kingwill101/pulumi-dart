// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kvstore_audit_log_config_audit_log_config_args_doc}
/// The set of arguments for AuditLogConfig.
/// {@endtemplate}
/// {@macro pulumi_kvstore_audit_log_config_audit_log_config_args_doc}
class AuditLogConfigArgs {
  /// Indicates Whether to Enable the Audit Log.  Valid value:
  /// * true: Default Value, Open.
  /// * false: Closed.
  ///
  /// Note: When the Instance for the Cluster Architecture Or Read/Write Split Architecture, at the Same Time to Open Or Close the Data Node and the Proxy Node of the Audit Log Doesn't Support Separate Open.
  final pulumi.Input<bool>? dbAudit;
  /// Instance ID, Call the Describeinstances Get.
  final pulumi.Input<String> instanceId;
  /// Audit Log Retention Period Value: 1~365.
  ///
  /// > **NOTE:** When the Instance dbaudit Value Is Set to True, This Parameter Entry into Force. The Parameter Setting of the Current Region of All a Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance for a Data Entry into Force.
  final pulumi.Input<int>? retention;

  /// Creates a new [AuditLogConfigArgs].
  /// [dbAudit] Indicates Whether to Enable the Audit Log.  Valid value:
  /// [instanceId] Instance ID, Call the Describeinstances Get.
  /// [retention] Audit Log Retention Period Value: 1~365.
  AuditLogConfigArgs({
    this.dbAudit,
    required this.instanceId,
    this.retention,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbAudit': ?dbAudit,
      'instanceId': instanceId,
      'retention': ?retention,
    };
  }

  factory AuditLogConfigArgs.fromMap(Map<String, dynamic> map) {
    return AuditLogConfigArgs(
      dbAudit: map['dbAudit'] == null ? null : (map['dbAudit']! as bool).input(),
      instanceId: (map['instanceId'] as String).input(),
      retention: map['retention'] == null ? null : (map['retention']! as int).input(),
    );
  }
}

