import 'package:pulumi/pulumi.dart';
import '../default_network_acl_egress/default_network_acl_egress.dart';
import '../default_network_acl_ingress/default_network_acl_ingress.dart';
import 'default_network_acl_args.dart';

/// Provides a resource to manage a VPC's default network ACL. This resource can manage the default network ACL of the default or a non-default VPC.
///
/// > **NOTE:** This is an advanced resource with special caveats. Please read this document in its entirety before using this resource. The `aws.ec2.DefaultNetworkAcl` behaves differently from normal resources. This provider does not _create_ this resource but instead attempts to "adopt" it into management.
///
/// Every VPC has a default network ACL that can be managed but not destroyed. When the provider first adopts the Default Network ACL, it **immediately removes all rules in the ACL**. It then proceeds to create any rules specified in the configuration. This step is required so that only the rules specified in the configuration are created.
///
/// This resource treats its inline rules as absolute; only the rules defined inline are created, and any additions/removals external to this resource will result in diffs being shown. For these reasons, this resource is incompatible with the `aws.ec2.NetworkAclRule` resource.
///
/// For more information about Network ACLs, see the AWS Documentation on [Network ACLs][aws-network-acls].
///
/// ## Example Usage
///
/// ### Basic Example
///
/// The following config gives the Default Network ACL the same rules that AWS includes but pulls the resource under management by this provider. This means that any ACL rules added or changed will be detected as drift.
///
///
///
/// ### Example: Deny All Egress Traffic, Allow Ingress
///
/// The following denies all Egress traffic by omitting any `egress` rules, while including the default `ingress` rule to allow all traffic.
///
///
///
/// ### Example: Deny All Traffic To Any Subnet In The Default Network ACL
///
/// This config denies all traffic in the Default ACL. This can be useful if you want to lock down the VPC to force all resources to assign a non-default ACL.
///
///
///
/// ### Managing Subnets In A Default Network ACL
///
/// Within a VPC, all Subnets must be associated with a Network ACL. In order to "delete" the association between a Subnet and a non-default Network ACL, the association is destroyed by replacing it with an association between the Subnet and the Default ACL instead.
///
/// When managing the Default Network ACL, you cannot "remove" Subnets. Instead, they must be reassigned to another Network ACL, or the Subnet itself must be destroyed. Because of these requirements, removing the `subnet_ids` attribute from the configuration of a `aws.ec2.DefaultNetworkAcl` resource may result in a reoccurring plan, until the Subnets are reassigned to another Network ACL or are destroyed.
///
/// Because Subnets are by default associated with the Default Network ACL, any non-explicit association will show up as a plan to remove the Subnet. For example: if you have a custom `aws.ec2.NetworkAcl` with two subnets attached, and you remove the `aws.ec2.NetworkAcl` resource, after successfully destroying this resource future plans will show a diff on the managed `aws.ec2.DefaultNetworkAcl`, as those two Subnets have been orphaned by the now destroyed network acl and thus adopted by the Default Network ACL. In order to avoid a reoccurring plan, they will need to be reassigned, destroyed, or added to the `subnet_ids` attribute of the `aws.ec2.DefaultNetworkAcl` entry.
///
/// As an alternative to the above, you can also specify the following lifecycle configuration in your `aws.ec2.DefaultNetworkAcl` resource:
///
///
///
/// ### Removing `aws.ec2.DefaultNetworkAcl` From Your Configuration
///
/// Each AWS VPC comes with a Default Network ACL that cannot be deleted. The `aws.ec2.DefaultNetworkAcl` allows you to manage this Network ACL, but the provider cannot destroy it. Removing this resource from your configuration will remove it from your statefile and management, **but will not destroy the Network ACL.** All Subnets associations and ingress or egress rules will be left as they are at the time of removal. You can resume managing them via the AWS Console.
///
/// ## Import
///
/// Using `pulumi import`, import Default Network ACLs using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/defaultNetworkAcl:DefaultNetworkAcl sample acl-7aaabd18
/// ```
class DefaultNetworkAcl extends CustomResource {
  /// ARN of the Default Network ACL
  late final Output<String> arn;

  /// Network ACL ID to manage. This attribute is exported from `aws.ec2.Vpc`, or manually found via the AWS Console.
  ///
  /// The following arguments are optional:
  late final Output<String> defaultNetworkAclId;

  /// Configuration block for an egress rule. Detailed below.
  late final Output<List<DefaultNetworkAclEgress>?> egress;

  /// Configuration block for an ingress rule. Detailed below.
  late final Output<List<DefaultNetworkAclIngress>?> ingress;

  /// ID of the AWS account that owns the Default Network ACL
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of Subnet IDs to apply the ACL to. See the notes above on Managing Subnets in the Default Network ACL
  late final Output<List<String>?> subnetIds;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// ID of the associated VPC
  late final Output<String> vpcId;

  DefaultNetworkAcl(
    String name, {
    DefaultNetworkAclArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/defaultNetworkAcl:DefaultNetworkAcl',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultNetworkAclId = registerOutput<String>('defaultNetworkAclId');
    this.egress = registerOutput<List<DefaultNetworkAclEgress>?>('egress');
    this.ingress = registerOutput<List<DefaultNetworkAclIngress>?>('ingress');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.subnetIds = registerOutput<List<String>?>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
