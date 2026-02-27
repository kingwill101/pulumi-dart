import 'package:pulumi/pulumi.dart' as pulumi;
import '../security_group_egress/security_group_egress.dart';
import '../security_group_ingress/security_group_ingress.dart';
import 'security_group_args.dart';

/// Provides a security group resource.
///
/// > **NOTE:** Avoid using the `ingress` and `egress` arguments of the `aws.ec2.SecurityGroup` resource to configure in-line rules, as they struggle with managing multiple CIDR blocks, and, due to the historical lack of unique IDs, tags and descriptions. To avoid these problems, use the current best practice of the `aws.vpc.SecurityGroupEgressRule` and `aws.vpc.SecurityGroupIngressRule` resources with one CIDR block per rule.
///
/// !> **WARNING:** You should not use the `aws.ec2.SecurityGroup` resource with _in-line rules_ (using the `ingress` and `egress` arguments of `aws.ec2.SecurityGroup`) in conjunction with the `aws.vpc.SecurityGroupEgressRule` and `aws.vpc.SecurityGroupIngressRule` resources or the `aws.ec2.SecurityGroupRule` resource. Doing so may cause rule conflicts, perpetual differences, and result in rules being overwritten.
///
/// > **NOTE:** Referencing Security Groups across VPC peering has certain restrictions. More information is available in the [VPC Peering User Guide](https://docs.aws.amazon.com/vpc/latest/peering/vpc-peering-security-groups.html).
///
/// > **NOTE:** Due to [AWS Lambda improved VPC networking changes that began deploying in September 2019](https://aws.amazon.com/blogs/compute/announcing-improved-vpc-networking-for-aws-lambda-functions/), security groups associated with Lambda Functions can take up to 45 minutes to successfully delete. To allow for successful deletion, the provider will wait for at least 45 minutes even if a shorter delete timeout is specified.
///
/// > **NOTE:** The `cidr_blocks` and `ipv6_cidr_blocks` parameters are optional in the `ingress` and `egress` blocks. If nothing is specified, traffic will be blocked as described in _NOTE on Egress rules_ later.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// > **NOTE on Egress rules:** By default, AWS creates an `ALLOW ALL` egress rule when creating a new Security Group inside of a VPC. When creating a new Security Group inside a VPC, **this provider will remove this default rule**, and require you specifically re-create it if you desire that rule. We feel this leads to fewer surprises in terms of controlling your egress rules. If you desire this rule to be in place, you can use this `egress` block:
///
///
///
/// ### Usage With Prefix List IDs
///
/// Prefix Lists are either managed by AWS internally, or created by the customer using a
/// Prefix List resource. Prefix Lists provided by
/// AWS are associated with a prefix list name, or service name, that is linked to a specific region.
/// Prefix list IDs are exported on VPC Endpoints, so you can use this format:
///
///
///
/// You can also find a specific Prefix List using the `aws.ec2.getPrefixList` data source.
///
/// ### Removing All Ingress and Egress Rules
///
/// The `ingress` and `egress` arguments are processed in attributes-as-blocks mode. Due to this, removing these arguments from the configuration will **not** cause the provider to destroy the managed rules. To subsequently remove all managed ingress and egress rules:
///
///
///
/// ### Recreating a Security Group
///
/// A simple security group `name` change "forces new" the security group--the provider destroys the security group and creates a new one. (Likewise, `description`, `name_prefix`, or `vpc_id` [cannot be changed](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/working-with-security-groups.html#creating-security-group).) Attempting to recreate the security group leads to a variety of complications depending on how it is used.
///
/// Security groups are generally associated with other resources--**more than 100** AWS Provider resources reference security groups. Referencing a resource from another resource creates a one-way dependency. For example, if you create an EC2 `aws.ec2.Instance` that has a `vpc_security_group_ids` argument that refers to an `aws.ec2.SecurityGroup` resource, the `aws.ec2.SecurityGroup` is a dependent of the `aws.ec2.Instance`. Because of this, the provider will create the security group first so that it can then be associated with the EC2 instance.
///
/// However, the dependency relationship actually goes both directions causing the _Security Group Deletion Problem_. AWS does not allow you to delete the security group associated with another resource (_e.g._, the `aws.ec2.Instance`).
///
/// The provider does not model bi-directional dependencies like this, but, even if it did, simply knowing the dependency situation would not be enough to solve it. For example, some resources must always have an associated security group while others don't need to. In addition, when the `aws.ec2.SecurityGroup` resource attempts to recreate, it receives a dependent object error, which does not provide information on whether the dependent object is a security group rule or, for example, an associated EC2 instance. Within the provider, the associated resource (_e.g._, `aws.ec2.Instance`) does not receive an error when the `aws.ec2.SecurityGroup` is trying to recreate even though that is where changes to the associated resource would need to take place (_e.g._, removing the security group association).
///
/// Despite these sticky problems, below are some ways to improve your experience when you find it necessary to recreate a security group.
///
/// ### Shorter timeout
///
/// (This example is one approach to recreating security groups. For more information on the challenges and the _Security Group Deletion Problem_, see the section above.)
///
/// If destroying a security group takes a long time, it may be because the provider cannot distinguish between a dependent object (_e.g._, a security group rule or EC2 instance) that is _in the process of being deleted_ and one that is not. In other words, it may be waiting for a train that isn't scheduled to arrive. To fail faster, shorten the `delete` timeout from the default timeout:
///
///
///
/// ### Provisioners
///
/// (This example is one approach to recreating security groups. For more information on the challenges and the _Security Group Deletion Problem_, see the section above.)
///
/// **DISCLAIMER:** We **_HIGHLY_** recommend using one of the above approaches and _NOT_ using local provisioners. Provisioners, like the one shown below, should be considered a **last resort** since they are _not readable_, _require skills outside standard configuration_, are _error prone_ and _difficult to maintain_, are not compatible with cloud environments and upgrade tools, require AWS CLI installation, and are subject to changes outside the AWS Provider.
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) ID of the security group.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Security Groups using the security group `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/securityGroup:SecurityGroup example sg-903004f8
/// ```
class SecurityGroup extends pulumi.CustomResource {
  /// ARN of the security group.
  late final pulumi.Output<String> arn;

  /// Security group description. Defaults to `Managed by Pulumi`. Cannot be `""`. **NOTE**: This field maps to the AWS `GroupDescription` attribute, for which there is no Update API. If you'd like to classify your security groups in a way that can be updated, use `tags`.
  late final pulumi.Output<String> description;

  /// Configuration block for egress rules. Can be specified multiple times for each egress rule. Each egress block supports fields documented below. This argument is processed in attribute-as-blocks mode.
  late final pulumi.Output<List<SecurityGroupEgress>> egress;

  /// Configuration block for ingress rules. Can be specified multiple times for each ingress rule. Each ingress block supports fields documented below. This argument is processed in attribute-as-blocks mode.
  late final pulumi.Output<List<SecurityGroupIngress>> ingress;

  /// Name of the security group. If omitted, the provider will assign a random, unique name.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Owner ID.
  late final pulumi.Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Instruct the provider to revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself. This is normally not needed, however certain AWS services such as Elastic Map Reduce may automatically add required rules to security groups used with the service, and those rules may contain a cyclic dependency that prevent the security groups from being destroyed without removing the dependency first. Default `false`.
  late final pulumi.Output<bool?> revokeRulesOnDelete;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// VPC ID. Defaults to the region's default VPC.
  late final pulumi.Output<String> vpcId;

  SecurityGroup(
    String name, {
    SecurityGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/securityGroup:SecurityGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.egress = registerOutput<List<SecurityGroupEgress>>('egress');
    this.ingress = registerOutput<List<SecurityGroupIngress>>('ingress');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.revokeRulesOnDelete = registerOutput<bool?>('revokeRulesOnDelete');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
