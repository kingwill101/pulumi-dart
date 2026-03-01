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
  AclRuleState({
    pulumi.Output<String>? aclId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? destCidr,
    pulumi.Output<String>? destPortRange,
    pulumi.Output<String>? direction,
    pulumi.Output<String>? ipProtocol,
    pulumi.Output<String>? policy,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? sourceCidr,
    pulumi.Output<String>? sourcePortRange,
  }) :
      aclId = pulumi.Input.asOptionalInput<String>(aclId),
      description = pulumi.Input.asOptionalInput<String>(description),
      destCidr = pulumi.Input.asOptionalInput<String>(destCidr),
      destPortRange = pulumi.Input.asOptionalInput<String>(destPortRange),
      direction = pulumi.Input.asOptionalInput<String>(direction),
      ipProtocol = pulumi.Input.asOptionalInput<String>(ipProtocol),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      sourceCidr = pulumi.Input.asOptionalInput<String>(sourceCidr),
      sourcePortRange = pulumi.Input.asOptionalInput<String>(sourcePortRange);

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
      aclId: map['aclId'] == null ? null : pulumi.Output.create<String>(map['aclId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destCidr: map['destCidr'] == null ? null : pulumi.Output.create<String>(map['destCidr'] as String),
      destPortRange: map['destPortRange'] == null ? null : pulumi.Output.create<String>(map['destPortRange'] as String),
      direction: map['direction'] == null ? null : pulumi.Output.create<String>(map['direction'] as String),
      ipProtocol: map['ipProtocol'] == null ? null : pulumi.Output.create<String>(map['ipProtocol'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      sourceCidr: map['sourceCidr'] == null ? null : pulumi.Output.create<String>(map['sourceCidr'] as String),
      sourcePortRange: map['sourcePortRange'] == null ? null : pulumi.Output.create<String>(map['sourcePortRange'] as String),
    );
  }
}

