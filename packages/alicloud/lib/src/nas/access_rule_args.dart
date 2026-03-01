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
    required String accessGroupName,
    String? fileSystemType,
    String? ipv6SourceCidrIp,
    int? priority,
    String? rwAccessType,
    String? sourceCidrIp,
    String? userAccessType,
  }) :
      accessGroupName = pulumi.Input.asInput<String>(accessGroupName),
      fileSystemType = pulumi.Input.asOptionalInput<String>(fileSystemType),
      ipv6SourceCidrIp = pulumi.Input.asOptionalInput<String>(ipv6SourceCidrIp),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      rwAccessType = pulumi.Input.asOptionalInput<String>(rwAccessType),
      sourceCidrIp = pulumi.Input.asOptionalInput<String>(sourceCidrIp),
      userAccessType = pulumi.Input.asOptionalInput<String>(userAccessType);

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
      accessGroupName: map['accessGroupName'] as String,
      fileSystemType: map['fileSystemType'] == null ? null : map['fileSystemType'] as String,
      ipv6SourceCidrIp: map['ipv6SourceCidrIp'] == null ? null : map['ipv6SourceCidrIp'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      rwAccessType: map['rwAccessType'] == null ? null : map['rwAccessType'] as String,
      sourceCidrIp: map['sourceCidrIp'] == null ? null : map['sourceCidrIp'] as String,
      userAccessType: map['userAccessType'] == null ? null : map['userAccessType'] as String,
    );
  }
}

