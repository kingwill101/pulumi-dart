import 'package:pulumi/pulumi.dart' as pulumi;
import '../default_security_group_egress/default_security_group_egress.dart';
import '../default_security_group_ingress/default_security_group_ingress.dart';
import 'default_security_group_args.dart';

/// Provides a resource to manage a default security group. This resource can manage the default security group of the default or a non-default VPC.
///
/// > **NOTE:** This is an advanced resource with special caveats. Please read this document in its entirety before using this resource. The `aws.ec2.DefaultSecurityGroup` resource behaves differently from normal resources. This provider does not _create_ this resource but instead attempts to "adopt" it into management.
///
/// When the provider first begins managing the default security group, it **immediately removes all ingress and egress rules in the Security Group**. It then creates any rules specified in the configuration. This way only the rules specified in the configuration are created.
///
/// This resource treats its inline rules as absolute; only the rules defined inline are created, and any additions/removals external to this resource will result in diff shown. For these reasons, this resource is incompatible with the `aws.ec2.SecurityGroupRule` resource.
///
/// For more information about default security groups, see the AWS documentation on [Default Security Groups][aws-default-security-groups]. To manage normal security groups, see the `aws.ec2.SecurityGroup` resource.
///
/// ## Example Usage
///
/// The following config gives the default security group the same rules that AWS provides by default but under management by this provider. This means that any ingress or egress rules added or changed will be detected as drift.
///
///
///
/// ### Example Config To Deny All Egress Traffic, Allowing Ingress
///
/// The following denies all Egress traffic by omitting any `egress` rules, while including the default `ingress` rule to allow all traffic.
///
///
///
/// ### Removing `aws.ec2.DefaultSecurityGroup` From Your Configuration
///
/// Removing this resource from your configuration will remove it from your statefile and management, but will not destroy the Security Group. All ingress or egress rules will be left as they are at the time of removal. You can resume managing them via the AWS Console.
///
/// ## Import
///
/// Using `pulumi import`, import Security Groups using the security group `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/defaultSecurityGroup:DefaultSecurityGroup default_sg sg-903004f8
/// ```
class DefaultSecurityGroup extends pulumi.CustomResource {
  /// ARN of the security group.
  late final pulumi.Output<String> arn;

  /// Description of the security group.
  late final pulumi.Output<String> description;

  /// Configuration block. Detailed below.
  late final pulumi.Output<List<DefaultSecurityGroupEgress>> egress;

  /// Configuration block. Detailed below.
  late final pulumi.Output<List<DefaultSecurityGroupIngress>> ingress;

  /// Name of the security group.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> namePrefix;

  /// Owner ID.
  late final pulumi.Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<bool?> revokeRulesOnDelete;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// VPC ID. **Note that changing the `vpc_id` will _not_ restore any default security group rules that were modified, added, or removed.** It will be left in its current state.
  late final pulumi.Output<String> vpcId;

  DefaultSecurityGroup(
    String name, {
    DefaultSecurityGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/defaultSecurityGroup:DefaultSecurityGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.egress = registerOutput<List<DefaultSecurityGroupEgress>>('egress');
    this.ingress = registerOutput<List<DefaultSecurityGroupIngress>>('ingress');
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
