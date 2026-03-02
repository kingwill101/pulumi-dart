// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_log_audit_audit_args_doc}
/// The set of arguments for Audit.
/// {@endtemplate}
/// {@macro pulumi_log_audit_audit_args_doc}
class AuditArgs {
  /// Aliuid value of your account.
  final pulumi.Input<String> aliuid;
  /// Name of SLS log audit.
  final pulumi.Input<String> displayName;
  /// Multi-account configuration, please fill in multiple aliuid.
  final pulumi.Input<List<String>>? multiAccounts;
  /// Resource Directory type. Optional values are all or custom. If the value is custom, argument multi_account should be provided.
  final pulumi.Input<String>? resourceDirectoryType;
  /// Log audit detailed configuration.
  final pulumi.Input<Map<String, String>>? variableMap;

  /// Creates a new [AuditArgs].
  /// [aliuid] Aliuid value of your account.
  /// [displayName] Name of SLS log audit.
  /// [multiAccounts] Multi-account configuration, please fill in multiple aliuid.
  /// [resourceDirectoryType] Resource Directory type. Optional values are all or custom. If the value is custom, argument multi_account should be provided.
  /// [variableMap] Log audit detailed configuration.
  AuditArgs({
    required this.aliuid,
    required this.displayName,
    this.multiAccounts,
    this.resourceDirectoryType,
    this.variableMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliuid': aliuid,
      'displayName': displayName,
      'multiAccounts': ?multiAccounts,
      'resourceDirectoryType': ?resourceDirectoryType,
      'variableMap': ?variableMap,
    };
  }

  factory AuditArgs.fromMap(Map<String, dynamic> map) {
    return AuditArgs(
      aliuid: (map['aliuid'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      multiAccounts: map['multiAccounts'] == null ? null : ((map['multiAccounts']! as List).cast<String>()).input(),
      resourceDirectoryType: map['resourceDirectoryType'] == null ? null : (map['resourceDirectoryType']! as String).input(),
      variableMap: map['variableMap'] == null ? null : ((map['variableMap']! as Map).cast<String, String>()).input(),
    );
  }
}

