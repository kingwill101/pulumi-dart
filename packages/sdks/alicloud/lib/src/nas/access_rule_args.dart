// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_access_rule_access_rule_args_doc}
/// The set of arguments for AccessRule.
/// {@endtemplate}
/// {@macro pulumi_nas_access_rule_access_rule_args_doc}
class AccessRuleArgs {
  /// AccessGroupName.
  final pulumi.Input<String> accessGroupName;
  /// filesystem type. include standard, extreme.
  final pulumi.Input<String>? fileSystemType;
  /// Ipv6SourceCidrIp.
  final pulumi.Input<String>? ipv6SourceCidrIp;
  /// Priority.
  final pulumi.Input<int>? priority;
  /// RWAccess.
  final pulumi.Input<String>? rwAccessType;
  /// SourceCidrIp.
  final pulumi.Input<String>? sourceCidrIp;
  /// UserAccess.
  final pulumi.Input<String>? userAccessType;

  /// Creates a new [AccessRuleArgs].
  /// [accessGroupName] AccessGroupName.
  /// [fileSystemType] filesystem type. include standard, extreme.
  /// [ipv6SourceCidrIp] Ipv6SourceCidrIp.
  /// [priority] Priority.
  /// [rwAccessType] RWAccess.
  /// [sourceCidrIp] SourceCidrIp.
  /// [userAccessType] UserAccess.
  AccessRuleArgs({
    required this.accessGroupName,
    this.fileSystemType,
    this.ipv6SourceCidrIp,
    this.priority,
    this.rwAccessType,
    this.sourceCidrIp,
    this.userAccessType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupName': accessGroupName,
      'fileSystemType': ?fileSystemType,
      'ipv6SourceCidrIp': ?ipv6SourceCidrIp,
      'priority': ?priority,
      'rwAccessType': ?rwAccessType,
      'sourceCidrIp': ?sourceCidrIp,
      'userAccessType': ?userAccessType,
    };
  }

  factory AccessRuleArgs.fromMap(Map<String, dynamic> map) {
    return AccessRuleArgs(
      accessGroupName: (map['accessGroupName'] as String).input(),
      fileSystemType: map['fileSystemType'] == null ? null : (map['fileSystemType']! as String).input(),
      ipv6SourceCidrIp: map['ipv6SourceCidrIp'] == null ? null : (map['ipv6SourceCidrIp']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      rwAccessType: map['rwAccessType'] == null ? null : (map['rwAccessType']! as String).input(),
      sourceCidrIp: map['sourceCidrIp'] == null ? null : (map['sourceCidrIp']! as String).input(),
      userAccessType: map['userAccessType'] == null ? null : (map['userAccessType']! as String).input(),
    );
  }
}

