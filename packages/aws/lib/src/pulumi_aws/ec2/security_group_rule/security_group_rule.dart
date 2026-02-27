import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_group_rule_args.dart';

/// Provides a security group rule resource. Represents a single `ingress` or `egress` group rule, which can be added to external Security Groups.
///
/// > **NOTE:** Avoid using the `aws.ec2.SecurityGroupRule` resource, as it struggles with managing multiple CIDR blocks, and, due to the historical lack of unique IDs, tags and descriptions. To avoid these problems, use the current best practice of the `aws.vpc.SecurityGroupEgressRule` and `aws.vpc.SecurityGroupIngressRule` resources with one CIDR block per rule.
///
/// !> **WARNING:** You should not use the `aws.ec2.SecurityGroupRule` resource in conjunction with `aws.vpc.SecurityGroupEgressRule` and `aws.vpc.SecurityGroupIngressRule` resources or with an `aws.ec2.SecurityGroup` resource that has in-line rules. Doing so may cause rule conflicts, perpetual differences, and result in rules being overwritten.
///
/// > **NOTE:** Setting `protocol = "all"` or `protocol = -1` with `from_port` and `to_port` will result in the EC2 API creating a security group rule with all ports open. This API behavior cannot be controlled by this provider and may generate warnings in the future.
///
/// > **NOTE:** Referencing Security Groups across VPC peering has certain restrictions. More information is available in the [VPC Peering User Guide](https://docs.aws.amazon.com/vpc/latest/peering/vpc-peering-security-groups.html).
///
/// ## Example Usage
///
/// Basic usage
///
///
///
/// ### Usage With Prefix List IDs
///
/// Prefix Lists are either managed by AWS internally, or created by the customer using a
/// Managed Prefix List resource. Prefix Lists provided by
/// AWS are associated with a prefix list name, or service name, that is linked to a specific region.
///
/// Prefix list IDs are exported on VPC Endpoints, so you can use this format:
///
///
///
/// You can also find a specific Prefix List using the `aws.ec2.getPrefixList`
/// or `ec2_managed_prefix_list` data sources:
///
///
///
/// ## Import
///
/// Import a rule with various IPv4 and IPv6 source CIDR blocks:
///
///
/// Import a rule, applicable to all ports, with a protocol other than TCP/UDP/ICMP/ICMPV6/ALL, e.g., Multicast Transport Protocol (MTP), using the IANA protocol number. For example: 92.
///
///
/// Import a default any/any egress rule to 0.0.0.0/0:
///
///
/// Import an egress rule with a prefix list ID destination:
///
///
/// Import a rule applicable to all protocols and ports with a security group source:
///
///
/// Import a rule that has itself and an IPv6 CIDR block as sources:
///
///
/// **Using `pulumi import` to import** Security Group Rules using the `security_group_id`, `type`, `protocol`, `from_port`, `to_port`, and source(s)/destination(s) (such as a `cidr_block`) separated by underscores (`_`). All parts are required. For example:
///
/// **NOTE:** Not all rule permissions (e.g., not all of a rule's CIDR blocks) need to be imported for this provider to manage rule permissions. However, importing some of a rule's permissions but not others, and then making changes to the rule will result in the creation of an additional rule to capture the updated permissions. Rule permissions that were not imported are left intact in the original rule.
///
/// Import an ingress rule in security group `sg-6e616f6d69` for TCP port 8000 with an IPv4 destination CIDR of `10.0.3.0/24`:
///
/// ```sh
/// $ pulumi import aws:ec2/securityGroupRule:SecurityGroupRule ingress sg-6e616f6d69_ingress_tcp_8000_8000_10.0.3.0/24
/// ```
///
/// Import a rule with various IPv4 and IPv6 source CIDR blocks:
///
/// ```sh
/// $ pulumi import aws:ec2/securityGroupRule:SecurityGroupRule ingress sg-4973616163_ingress_tcp_100_121_10.1.0.0/16_2001:db8::/48_10.2.0.0/16_2002:db8::/48
/// ```
///
/// Import a rule, applicable to all ports, with a protocol other than TCP/UDP/ICMP/ICMPV6/ALL, e.g., Multicast Transport Protocol (MTP), using the IANA protocol number. For example: 92.
///
/// ```sh
/// $ pulumi import aws:ec2/securityGroupRule:SecurityGroupRule ingress sg-6777656e646f6c796e_ingress_92_0_65536_10.0.3.0/24_10.0.4.0/24
/// ```
///
/// Import a default any/any egress rule to 0.0.0.0/0:
///
/// ```sh
/// $ pulumi import aws:ec2/securityGroupRule:SecurityGroupRule default_egress sg-6777656e646f6c796e_egress_all_0_0_0.0.0.0/0
/// ```
///
/// Import an egress rule with a prefix list ID destination:
///
/// ```sh
/// $ pulumi import aws:ec2/securityGroupRule:SecurityGroupRule egress sg-62726f6479_egress_tcp_8000_8000_pl-6469726b
/// ```
///
/// Import a rule applicable to all protocols and ports with a security group source:
///
/// ```sh
/// $ pulumi import aws:ec2/securityGroupRule:SecurityGroupRule ingress_rule sg-7472697374616e_ingress_all_0_65536_sg-6176657279
/// ```
///
/// Import a rule that has itself and an IPv6 CIDR block as sources:
///
/// ```sh
/// $ pulumi import aws:ec2/securityGroupRule:SecurityGroupRule rule_name sg-656c65616e6f72_ingress_tcp_80_80_self_2001:db8::/48
/// ```
class SecurityGroupRule extends pulumi.CustomResource {
  /// List of CIDR blocks. Cannot be specified with `source_security_group_id` or `self`.
  late final pulumi.Output<List<String>?> cidrBlocks;

  /// Description of the rule.
  late final pulumi.Output<String?> description;

  /// Start port (or ICMP type number if protocol is "icmp" or "icmpv6").
  late final pulumi.Output<int> fromPort;

  /// List of IPv6 CIDR blocks. Cannot be specified with `source_security_group_id` or `self`.
  late final pulumi.Output<List<String>?> ipv6CidrBlocks;

  /// List of Prefix List IDs.
  late final pulumi.Output<List<String>?> prefixListIds;

  /// Protocol. If not icmp, icmpv6, tcp, udp, or all use the [protocol number](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)
  late final pulumi.Output<String> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// > **Note** Although `cidr_blocks`, `ipv6_cidr_blocks`, `prefix_list_ids`, and `source_security_group_id` are all marked as optional, you _must_ provide one of them in order to configure the source of the traffic.
  late final pulumi.Output<String> region;

  /// Security group to apply this rule to.
  late final pulumi.Output<String> securityGroupId;

  /// If the `aws.ec2.SecurityGroupRule` resource has a single source or destination then this is the AWS Security Group Rule resource ID. Otherwise it is empty.
  late final pulumi.Output<String> securityGroupRuleId;

  /// Whether the security group itself will be added as a source to this ingress rule. Cannot be specified with `cidr_blocks`, `ipv6_cidr_blocks`, or `source_security_group_id`.
  late final pulumi.Output<bool?> self;

  /// Security group id to allow access to/from, depending on the `type`. Cannot be specified with `cidr_blocks`, `ipv6_cidr_blocks`, or `self`.
  late final pulumi.Output<String> sourceSecurityGroupId;

  /// End port (or ICMP code if protocol is "icmp").
  late final pulumi.Output<int> toPort;

  /// Type of rule being created. Valid options are `ingress` (inbound)
  /// or `egress` (outbound).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  SecurityGroupRule(
    String name, {
    SecurityGroupRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/securityGroupRule:SecurityGroupRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrBlocks = registerOutput<List<String>?>('cidrBlocks');
    this.description = registerOutput<String?>('description');
    this.fromPort = registerOutput<int>('fromPort');
    this.ipv6CidrBlocks = registerOutput<List<String>?>('ipv6CidrBlocks');
    this.prefixListIds = registerOutput<List<String>?>('prefixListIds');
    this.protocol = registerOutput<String>('protocol');
    this.region = registerOutput<String>('region');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.securityGroupRuleId = registerOutput<String>('securityGroupRuleId');
    this.self = registerOutput<bool?>('self');
    this.sourceSecurityGroupId =
        registerOutput<String>('sourceSecurityGroupId');
    this.toPort = registerOutput<int>('toPort');
    this.type = registerOutput<String>('type');
  }
}
