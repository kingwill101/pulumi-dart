// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_group_rules_rule.dart';

/// Result data returned by getSecurityGroupRules.
class GetSecurityGroupRulesResult {
  /// Authorization direction, `ingress` or `egress`.
  final String? direction;
  /// The description of the security group that owns the rules.
  final String groupDesc;
  final String groupId;
  /// The name of the security group that owns the rules.
  final String groupName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The protocol. Can be `tcp`, `udp`, `icmp`, `gre` or `all`.
  final String? ipProtocol;
  /// Network type, `internet` or `intranet`.
  final String? nicType;
  final String? outputFile;
  /// Authorization policy. Can be either `accept` or `drop`.
  final String? policy;
  /// A list of security group rules. Each element contains the following attributes:
  final List<GetSecurityGroupRulesRule> rules;

  /// Creates a new [GetSecurityGroupRulesResult].
  /// [direction] Authorization direction, `ingress` or `egress`.
  /// [groupDesc] The description of the security group that owns the rules.
  /// [groupId] Required.
  /// [groupName] The name of the security group that owns the rules.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipProtocol] The protocol. Can be `tcp`, `udp`, `icmp`, `gre` or `all`.
  /// [nicType] Network type, `internet` or `intranet`.
  /// [outputFile] Optional.
  /// [policy] Authorization policy. Can be either `accept` or `drop`.
  /// [rules] A list of security group rules. Each element contains the following attributes:
  const GetSecurityGroupRulesResult({
    this.direction,
    required this.groupDesc,
    required this.groupId,
    required this.groupName,
    required this.id,
    this.ipProtocol,
    this.nicType,
    this.outputFile,
    this.policy,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'groupDesc': groupDesc,
      'groupId': groupId,
      'groupName': groupName,
      'id': id,
      'ipProtocol': ?ipProtocol,
      'nicType': ?nicType,
      'outputFile': ?outputFile,
      'policy': ?policy,
      'rules': pulumi.Input.encodeList<GetSecurityGroupRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory GetSecurityGroupRulesResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupRulesResult(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupDesc: map['groupDesc'] as String,
      groupId: map['groupId'] as String,
      groupName: map['groupName'] as String,
      id: map['id'] as String,
      ipProtocol: (() { final guardedValue = map['ipProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nicType: (() { final guardedValue = map['nicType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: pulumi.Input.decodeList<GetSecurityGroupRulesRule>(map['rules']!, (value) => GetSecurityGroupRulesRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

