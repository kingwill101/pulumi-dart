import 'package:pulumi/pulumi.dart';
import 'security_group_association_args.dart';

/// Provides a resource to create an association between a VPC endpoint and a security group.
///
/// > **NOTE on VPC Endpoints and VPC Endpoint Security Group Associations:** The provider provides
/// both a standalone VPC Endpoint Security Group Association (an association between a VPC endpoint
/// and a single `security_group_id`) and a VPC Endpoint resource with a `security_group_ids`
/// attribute. Do not use the same security group ID in both a VPC Endpoint resource and a VPC Endpoint Security
/// Group Association resource. Doing so will cause a conflict of associations and will overwrite the association.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Endpoint Security Group Associations using `vpc_endpoint_id` together with `security_group_id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/securityGroupAssociation:SecurityGroupAssociation example vpce-aaaaaaaa/sg-bbbbbbbbbbbbbbbbb
/// ```
class SecurityGroupAssociation extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether this association should replace the association with the VPC's default security group that is created when no security groups are specified during VPC endpoint creation. At most 1 association per-VPC endpoint should be configured with `replace_default_association = true`. `false` should be used when importing resources.
  late final Output<bool?> replaceDefaultAssociation;

  /// The ID of the security group to be associated with the VPC endpoint.
  late final Output<String> securityGroupId;

  /// The ID of the VPC endpoint with which the security group will be associated.
  late final Output<String> vpcEndpointId;

  SecurityGroupAssociation(
    String name, {
    SecurityGroupAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/securityGroupAssociation:SecurityGroupAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.replaceDefaultAssociation =
        registerOutput<bool?>('replaceDefaultAssociation');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.vpcEndpointId = registerOutput<String>('vpcEndpointId');
  }
}
