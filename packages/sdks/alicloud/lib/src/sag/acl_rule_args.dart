// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sag_acl_rule_acl_rule_args_doc}
/// The set of arguments for AclRule.
/// {@endtemplate}
/// {@macro pulumi_sag_acl_rule_acl_rule_args_doc}
class AclRuleArgs {
  /// The ID of the ACL.
  final pulumi.Input<String> aclId;
  /// The description of the ACL rule. It must be 1 to 512 characters in length.
  final pulumi.Input<String>? description;
  /// The destination address. It is an IPv4 address range in CIDR format. Default value: 0.0.0.0/0.
  final pulumi.Input<String> destCidr;
  /// The range of the destination port. Valid value: 80/80.
  final pulumi.Input<String> destPortRange;
  /// The direction of the ACL rule. Valid values: in|out.
  final pulumi.Input<String> direction;
  /// The protocol used by the ACL rule. The value is not case sensitive.
  final pulumi.Input<String> ipProtocol;
  /// The policy used by the ACL rule. Valid values: accept|drop.
  final pulumi.Input<String> policy;
  /// The priority of the ACL rule. Value range: 1 to 100.
  final pulumi.Input<int>? priority;
  /// The source address. It is an IPv4 address range in the CIDR format. Default value: 0.0.0.0/0.
  final pulumi.Input<String> sourceCidr;
  /// The range of the source port. Valid value: 80/80.
  final pulumi.Input<String> sourcePortRange;

  /// Creates a new [AclRuleArgs].
  /// [aclId] The ID of the ACL.
  /// [description] The description of the ACL rule. It must be 1 to 512 characters in length.
  /// [destCidr] The destination address. It is an IPv4 address range in CIDR format. Default value: 0.0.0.0/0.
  /// [destPortRange] The range of the destination port. Valid value: 80/80.
  /// [direction] The direction of the ACL rule. Valid values: in|out.
  /// [ipProtocol] The protocol used by the ACL rule. The value is not case sensitive.
  /// [policy] The policy used by the ACL rule. Valid values: accept|drop.
  /// [priority] The priority of the ACL rule. Value range: 1 to 100.
  /// [sourceCidr] The source address. It is an IPv4 address range in the CIDR format. Default value: 0.0.0.0/0.
  /// [sourcePortRange] The range of the source port. Valid value: 80/80.
  AclRuleArgs({
    required this.aclId,
    this.description,
    required this.destCidr,
    required this.destPortRange,
    required this.direction,
    required this.ipProtocol,
    required this.policy,
    this.priority,
    required this.sourceCidr,
    required this.sourcePortRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': aclId,
      'description': ?description,
      'destCidr': destCidr,
      'destPortRange': destPortRange,
      'direction': direction,
      'ipProtocol': ipProtocol,
      'policy': policy,
      'priority': ?priority,
      'sourceCidr': sourceCidr,
      'sourcePortRange': sourcePortRange,
    };
  }

  factory AclRuleArgs.fromMap(Map<String, dynamic> map) {
    return AclRuleArgs(
      aclId: pulumi.Input.fromValue(map['aclId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destCidr: pulumi.Input.fromValue(map['destCidr'] as String),
      destPortRange: pulumi.Input.fromValue(map['destPortRange'] as String),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      ipProtocol: pulumi.Input.fromValue(map['ipProtocol'] as String),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceCidr: pulumi.Input.fromValue(map['sourceCidr'] as String),
      sourcePortRange: pulumi.Input.fromValue(map['sourcePortRange'] as String),
    );
  }
}

