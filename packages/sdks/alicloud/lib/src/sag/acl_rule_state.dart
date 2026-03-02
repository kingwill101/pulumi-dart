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
      aclId: map['aclId'] == null ? null : (map['aclId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destCidr: map['destCidr'] == null ? null : (map['destCidr'] as String).input(),
      destPortRange: map['destPortRange'] == null ? null : (map['destPortRange'] as String).input(),
      direction: map['direction'] == null ? null : (map['direction'] as String).input(),
      ipProtocol: map['ipProtocol'] == null ? null : (map['ipProtocol'] as String).input(),
      policy: map['policy'] == null ? null : (map['policy'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      sourceCidr: map['sourceCidr'] == null ? null : (map['sourceCidr'] as String).input(),
      sourcePortRange: map['sourcePortRange'] == null ? null : (map['sourcePortRange'] as String).input(),
    );
  }
}

