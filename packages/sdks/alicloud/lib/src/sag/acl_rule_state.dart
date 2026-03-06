// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AclRule resources.
class AclRuleState {
  /// The ID of the ACL.
  final pulumi.Input<String>? aclId;
  /// The description of the ACL rule. It must be 1 to 512 characters in length.
  final pulumi.Input<String>? description;
  /// The destination address. It is an IPv4 address range in CIDR format. Default value: 0.0.0.0/0.
  final pulumi.Input<String>? destCidr;
  /// The range of the destination port. Valid value: 80/80.
  final pulumi.Input<String>? destPortRange;
  /// The direction of the ACL rule. Valid values: in|out.
  final pulumi.Input<String>? direction;
  /// The protocol used by the ACL rule. The value is not case sensitive.
  final pulumi.Input<String>? ipProtocol;
  /// The policy used by the ACL rule. Valid values: accept|drop.
  final pulumi.Input<String>? policy;
  /// The priority of the ACL rule. Value range: 1 to 100.
  final pulumi.Input<int>? priority;
  /// The source address. It is an IPv4 address range in the CIDR format. Default value: 0.0.0.0/0.
  final pulumi.Input<String>? sourceCidr;
  /// The range of the source port. Valid value: 80/80.
  final pulumi.Input<String>? sourcePortRange;

  /// Creates a new [AclRuleState].
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
  const AclRuleState({
    this.aclId,
    this.description,
    this.destCidr,
    this.destPortRange,
    this.direction,
    this.ipProtocol,
    this.policy,
    this.priority,
    this.sourceCidr,
    this.sourcePortRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': ?aclId,
      'description': ?description,
      'destCidr': ?destCidr,
      'destPortRange': ?destPortRange,
      'direction': ?direction,
      'ipProtocol': ?ipProtocol,
      'policy': ?policy,
      'priority': ?priority,
      'sourceCidr': ?sourceCidr,
      'sourcePortRange': ?sourcePortRange,
    };
  }

  factory AclRuleState.fromMap(Map<String, dynamic> map) {
    return AclRuleState(
      aclId: (() { final guardedValue = map['aclId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destCidr: (() { final guardedValue = map['destCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destPortRange: (() { final guardedValue = map['destPortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipProtocol: (() { final guardedValue = map['ipProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceCidr: (() { final guardedValue = map['sourceCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourcePortRange: (() { final guardedValue = map['sourcePortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

