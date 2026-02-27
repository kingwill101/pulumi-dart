import 'package:pulumi/pulumi.dart';
import 'network_acl_rule_args.dart';

/// Creates an entry (a rule) in a network ACL with the specified rule number.
///
/// > **NOTE on Network ACLs and Network ACL Rules:** This provider currently
/// provides both a standalone Network ACL Rule resource and a Network ACL resource with rules
/// defined in-line. At this time you cannot use a Network ACL with in-line rules
/// in conjunction with any Network ACL Rule resources. Doing so will cause
/// a conflict of rule settings and will overwrite rules.
///
/// ## Example Usage
///
///
///
/// > **Note:** One of either `cidr_block` or `ipv6_cidr_block` is required.
///
/// ## Import
///
/// Using the procotol's decimal value:
///
///
/// **Using `pulumi import` to import** individual rules using `NETWORK_ACL_ID:RULE_NUMBER:PROTOCOL:EGRESS`, where `PROTOCOL` can be a decimal (such as "6") or string (such as "tcp") value. For example:
///
/// Using the procotol's string value:
///
/// ```sh
/// $ pulumi import aws:ec2/networkAclRule:NetworkAclRule my_rule acl-7aaabd18:100:tcp:false
/// ```
///
/// Using the procotol's decimal value:
///
/// ```sh
/// $ pulumi import aws:ec2/networkAclRule:NetworkAclRule my_rule acl-7aaabd18:100:6:false
/// ```
class NetworkAclRule extends CustomResource {
  /// The network range to allow or deny, in CIDR notation (for example 172.16.0.0/24 ).
  late final Output<String?> cidrBlock;

  /// Indicates whether this is an egress rule (rule is applied to traffic leaving the subnet). Default `false`.
  late final Output<bool?> egress;

  /// The from port to match.
  late final Output<int?> fromPort;

  /// ICMP protocol: The ICMP code. Required if specifying ICMP for the protocolE.g., -1
  ///
  /// > **NOTE:** If the value of `protocol` is `-1` or `all`, the `from_port` and `to_port` values will be ignored and the rule will apply to all ports.
  ///
  /// > **NOTE:** If the value of `icmp_type` is `-1` (which results in a wildcard ICMP type), the `icmp_code` must also be set to `-1` (wildcard ICMP code).
  ///
  /// > Note: For more information on ICMP types and codes, see here: https://www.iana.org/assignments/icmp-parameters/icmp-parameters.xhtml
  late final Output<int?> icmpCode;

  /// ICMP protocol: The ICMP type. Required if specifying ICMP for the protocolE.g., -1
  late final Output<int?> icmpType;

  /// The IPv6 CIDR block to allow or deny.
  late final Output<String?> ipv6CidrBlock;

  /// The ID of the network ACL.
  late final Output<String> networkAclId;

  /// The protocol. A value of -1 means all protocols.
  late final Output<String> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Indicates whether to allow or deny the traffic that matches the rule. Accepted values: `allow` | `deny`
  late final Output<String> ruleAction;

  /// The rule number for the entry (for example, 100). ACL entries are processed in ascending order by rule number.
  late final Output<int> ruleNumber;

  /// The to port to match.
  late final Output<int?> toPort;

  NetworkAclRule(
    String name, {
    NetworkAclRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkAclRule:NetworkAclRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cidrBlock = registerOutput<String?>('cidrBlock');
    this.egress = registerOutput<bool?>('egress');
    this.fromPort = registerOutput<int?>('fromPort');
    this.icmpCode = registerOutput<int?>('icmpCode');
    this.icmpType = registerOutput<int?>('icmpType');
    this.ipv6CidrBlock = registerOutput<String?>('ipv6CidrBlock');
    this.networkAclId = registerOutput<String>('networkAclId');
    this.protocol = registerOutput<String>('protocol');
    this.region = registerOutput<String>('region');
    this.ruleAction = registerOutput<String>('ruleAction');
    this.ruleNumber = registerOutput<int>('ruleNumber');
    this.toPort = registerOutput<int?>('toPort');
  }
}
