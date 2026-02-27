import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_security_group_rules_exclusive_args.dart';

/// Resource for managing an exclusive set of AWS VPC (Virtual Private Cloud) Security Group Rules.
///
/// This resource manages the complete set of ingress and egress rules assigned to a security group. It provides exclusive control by removing any rules not explicitly defined in the configuration.
///
/// !> This resource takes exclusive ownership over ingress and egress rules assigned to a security group. This includes removal of rules which are not explicitly configured. To prevent persistent drift, ensure any `aws.vpc.SecurityGroupIngressRule` and `aws.vpc.SecurityGroupEgressRule` resources managed alongside this resource are included in the `ingress_rule_ids` and `egress_rule_ids` arguments.
///
/// > Destruction of this resource means Terraform will no longer manage reconciliation of the configured security group rules. It **will not** revoke the configured rules from the security group.
///
/// > When this resource detects a configured rule ID which must be created, a warning diagnostic is emitted. This is due to a limitation in the [`AuthorizeSecurityGroupEgress`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AuthorizeSecurityGroupEgress.html) and [`AuthorizeSecurityGroupIngress`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AuthorizeSecurityGroupIngress.html) APIs, which require the full rule definition to be provided rather than a reference to an existing rule ID.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Disallow All Rules
///
/// To automatically remove any configured security group rules, set both `ingress_rule_ids` and `egress_rule_ids` to empty lists.
///
/// > This will not __prevent__ rules from being assigned to a security group via Terraform (or any other interface). This resource enables bringing security group rule assignments into a configured state, however, this reconciliation happens only when `apply` is proactively run.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import exclusive management of security group rules using the `security_group_id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcSecurityGroupRulesExclusive:VpcSecurityGroupRulesExclusive example sg-1234567890abcdef0
/// ```
class VpcSecurityGroupRulesExclusive extends pulumi.CustomResource {
  /// Egress rule IDs.
  late final pulumi.Output<List<String>> egressRuleIds;

  /// Ingress rule IDs.
  late final pulumi.Output<List<String>> ingressRuleIds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ID of the security group.
  late final pulumi.Output<String> securityGroupId;

  VpcSecurityGroupRulesExclusive(
    String name, {
    VpcSecurityGroupRulesExclusiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcSecurityGroupRulesExclusive:VpcSecurityGroupRulesExclusive',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.egressRuleIds = registerOutput<List<String>>('egressRuleIds');
    this.ingressRuleIds = registerOutput<List<String>>('ingressRuleIds');
    this.region = registerOutput<String>('region');
    this.securityGroupId = registerOutput<String>('securityGroupId');
  }
}
