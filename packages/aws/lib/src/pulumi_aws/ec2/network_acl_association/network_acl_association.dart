import 'package:pulumi/pulumi.dart';
import 'network_acl_association_args.dart';

/// Provides an network ACL association resource which allows you to associate your network ACL with any subnet(s).
///
/// > **NOTE on Network ACLs and Network ACL Associations:** the provider provides both a standalone network ACL association resource
/// and a network ACL resource with a `subnet_ids` attribute. Do not use the same subnet ID in both a network ACL
/// resource and a network ACL association resource. Doing so will cause a conflict of associations and will overwrite the association.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Network ACL associations using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/networkAclAssociation:NetworkAclAssociation main aclassoc-02baf37f20966b3e6
/// ```
class NetworkAclAssociation extends CustomResource {
  /// The ID of the network ACL.
  late final Output<String> networkAclId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the associated Subnet.
  late final Output<String> subnetId;

  NetworkAclAssociation(
    String name, {
    NetworkAclAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkAclAssociation:NetworkAclAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.networkAclId = registerOutput<String>('networkAclId');
    this.region = registerOutput<String>('region');
    this.subnetId = registerOutput<String>('subnetId');
  }
}
