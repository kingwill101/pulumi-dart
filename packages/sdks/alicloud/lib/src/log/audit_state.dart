// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Audit resources.
class AuditState {
  /// Aliuid value of your account.
  final pulumi.Input<String>? aliuid;

  /// Name of SLS log audit.
  final pulumi.Input<String>? displayName;

  /// Multi-account configuration, please fill in multiple aliuid.
  final pulumi.Input<List<String>>? multiAccounts;

  /// Resource Directory type. Optional values are all or custom. If the value is custom, argument multi_account should be provided.
  final pulumi.Input<String>? resourceDirectoryType;

  /// Log audit detailed configuration.
  final pulumi.Input<Map<String, String>>? variableMap;

  /// Creates a new [AuditState].
  /// [aliuid] Aliuid value of your account.
  /// [displayName] Name of SLS log audit.
  /// [multiAccounts] Multi-account configuration, please fill in multiple aliuid.
  /// [resourceDirectoryType] Resource Directory type. Optional values are all or custom. If the value is custom, argument multi_account should be provided.
  /// [variableMap] Log audit detailed configuration.
  AuditState({
    this.aliuid,
    this.displayName,
    this.multiAccounts,
    this.resourceDirectoryType,
    this.variableMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliuid': ?aliuid,
      'displayName': ?displayName,
      'multiAccounts': ?multiAccounts,
      'resourceDirectoryType': ?resourceDirectoryType,
      'variableMap': ?variableMap,
    };
  }

  factory AuditState.fromMap(Map<String, dynamic> map) {
    return AuditState(
      aliuid: (() {
        final guardedValue = map['aliuid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      multiAccounts: (() {
        final guardedValue = map['multiAccounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceDirectoryType: (() {
        final guardedValue = map['resourceDirectoryType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      variableMap: (() {
        final guardedValue = map['variableMap'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
