import 'package:pulumi/pulumi.dart';
import '../network_acl_egress/network_acl_egress.dart';
import '../network_acl_ingress/network_acl_ingress.dart';
import 'network_acl_args.dart';

/// Provides an network ACL resource. You might set up network ACLs with rules similar
/// to your security groups in order to add an additional layer of security to your VPC.
///
/// > **NOTE on Network ACLs and Network ACL Rules:** This provider currently
/// provides both a standalone Network ACL Rule resource and a Network ACL resource with rules
/// defined in-line. At this time you cannot use a Network ACL with in-line rules
/// in conjunction with any Network ACL Rule resources. Doing so will cause
/// a conflict of rule settings and will overwrite rules.
///
/// > **NOTE on Network ACLs and Network ACL Associations:** the provider provides both a standalone network ACL association
/// resource and a network ACL resource with a `subnet_ids` attribute. Do not use the same subnet ID in both a network ACL
/// resource and a network ACL association resource. Doing so will cause a conflict of associations and will overwrite the association.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Network ACLs using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/networkAcl:NetworkAcl main acl-7aaabd18
/// ```
class NetworkAcl extends CustomResource {
  /// The ARN of the network ACL
  late final Output<String> arn;

  /// Specifies an egress rule. Parameters defined below.
  late final Output<List<NetworkAclEgress>> egress;

  /// Specifies an ingress rule. Parameters defined below.
  late final Output<List<NetworkAclIngress>> ingress;

  /// The ID of the AWS account that owns the network ACL.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A list of Subnet IDs to apply the ACL to
  late final Output<List<String>> subnetIds;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The ID of the associated VPC.
  late final Output<String> vpcId;

  NetworkAcl(
    String name, {
    NetworkAclArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkAcl:NetworkAcl',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.egress = registerOutput<List<NetworkAclEgress>>('egress');
    this.ingress = registerOutput<List<NetworkAclIngress>>('ingress');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
