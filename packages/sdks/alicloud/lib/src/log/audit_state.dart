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
    pulumi.Output<String>? aliuid,
    pulumi.Output<String>? displayName,
    pulumi.Output<List<String>>? multiAccounts,
    pulumi.Output<String>? resourceDirectoryType,
    pulumi.Output<Map<String, String>>? variableMap,
  }) :
      aliuid = pulumi.Input.asOptionalInput<String>(aliuid),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      multiAccounts = pulumi.Input.asOptionalInput<List<String>>(multiAccounts),
      resourceDirectoryType = pulumi.Input.asOptionalInput<String>(resourceDirectoryType),
      variableMap = pulumi.Input.asOptionalInput<Map<String, String>>(variableMap);

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
      aliuid: map['aliuid'] == null ? null : pulumi.Output.create<String>(map['aliuid'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      multiAccounts: map['multiAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['multiAccounts'] as List).cast<String>()),
      resourceDirectoryType: map['resourceDirectoryType'] == null ? null : pulumi.Output.create<String>(map['resourceDirectoryType'] as String),
      variableMap: map['variableMap'] == null ? null : pulumi.Output.create<Map<String, String>>((map['variableMap'] as Map).cast<String, String>()),
    );
  }
}

