import 'package:pulumi/pulumi.dart';
import 'policy_table_association_args.dart';

/// Manages an EC2 Transit Gateway Policy Table association.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.PolicyTableAssociation` using the EC2 Transit Gateway Policy Table identifier, an underscore, and the EC2 Transit Gateway Attachment identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/policyTableAssociation:PolicyTableAssociation example tgw-rtb-12345678_tgw-attach-87654321
/// ```
class PolicyTableAssociation extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Identifier of the resource
  late final Output<String> resourceId;

  /// Type of the resource
  late final Output<String> resourceType;

  /// Identifier of EC2 Transit Gateway Attachment.
  late final Output<String> transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Policy Table.
  late final Output<String> transitGatewayPolicyTableId;

  PolicyTableAssociation(
    String name, {
    PolicyTableAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/policyTableAssociation:PolicyTableAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.resourceType = registerOutput<String>('resourceType');
    this.transitGatewayAttachmentId =
        registerOutput<String>('transitGatewayAttachmentId');
    this.transitGatewayPolicyTableId =
        registerOutput<String>('transitGatewayPolicyTableId');
  }
}
