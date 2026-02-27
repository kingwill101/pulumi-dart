import 'package:pulumi/pulumi.dart';
import 'security_group_egress_rule_args.dart';

/// Manages an outbound (egress) rule for a security group.
///
/// When specifying an outbound rule for your security group in a VPC, the configuration must include a destination for the traffic.
///
/// > **NOTE:** Using `aws.vpc.SecurityGroupEgressRule` and `aws.vpc.SecurityGroupIngressRule` resources is the current best practice. Avoid using the `aws.ec2.SecurityGroupRule` resource and the `ingress` and `egress` arguments of the `aws.ec2.SecurityGroup` resource for configuring in-line rules, as they struggle with managing multiple CIDR blocks, and tags and descriptions due to the historical lack of unique IDs.
///
/// !> **WARNING:** You should not use the `aws.vpc.SecurityGroupEgressRule` and `aws.vpc.SecurityGroupIngressRule` resources in conjunction with the `aws.ec2.SecurityGroup` resource with _in-line rules_ (using the `ingress` and `egress` arguments of `aws.ec2.SecurityGroup`) or the `aws.ec2.SecurityGroupRule` resource. Doing so may cause rule conflicts, perpetual differences, and result in rules being overwritten.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the security group rule.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import security group egress rules using the `security_group_rule_id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpc/securityGroupEgressRule:SecurityGroupEgressRule example sgr-02108b27edd666983
/// ```
class SecurityGroupEgressRule extends CustomResource {
  /// The Amazon Resource Name (ARN) of the security group rule.
  late final Output<String> arn;

  /// The destination IPv4 CIDR range.
  late final Output<String?> cidrIpv4;

  /// The destination IPv6 CIDR range.
  late final Output<String?> cidrIpv6;

  /// The security group rule description.
  late final Output<String?> description;

  /// The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type.
  late final Output<int?> fromPort;

  /// The IP protocol name or number. Use `-1` to specify all protocols. Note that if `ip_protocol` is set to `-1`, it translates to all protocols, all port ranges, and `from_port` and `to_port` values should not be defined.
  late final Output<String> ipProtocol;

  /// The ID of the destination prefix list.
  late final Output<String?> prefixListId;

  /// The destination security group that is referenced in the rule.
  late final Output<String?> referencedSecurityGroupId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the security group.
  late final Output<String> securityGroupId;

  /// The ID of the security group rule.
  late final Output<String> securityGroupRuleId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
  ///
  /// > **Note** Although `cidr_ipv4`, `cidr_ipv6`, `prefix_list_id`, and `referenced_security_group_id` are all marked as optional, you *must* provide one of them in order to configure the destination of the traffic. The `from_port` and `to_port` arguments are required unless `ip_protocol` is set to `-1` or `icmpv6`.
  late final Output<int?> toPort;

  SecurityGroupEgressRule(
    String name, {
    SecurityGroupEgressRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpc/securityGroupEgressRule:SecurityGroupEgressRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cidrIpv4 = registerOutput<String?>('cidrIpv4');
    this.cidrIpv6 = registerOutput<String?>('cidrIpv6');
    this.description = registerOutput<String?>('description');
    this.fromPort = registerOutput<int?>('fromPort');
    this.ipProtocol = registerOutput<String>('ipProtocol');
    this.prefixListId = registerOutput<String?>('prefixListId');
    this.referencedSecurityGroupId =
        registerOutput<String?>('referencedSecurityGroupId');
    this.region = registerOutput<String>('region');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.securityGroupRuleId = registerOutput<String>('securityGroupRuleId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.toPort = registerOutput<int?>('toPort');
  }
}
