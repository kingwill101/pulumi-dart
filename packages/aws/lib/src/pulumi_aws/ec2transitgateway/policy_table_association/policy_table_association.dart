import 'package:pulumi/pulumi.dart' as pulumi;
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
class PolicyTableAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Identifier of the resource
  late final pulumi.Output<String> resourceId;

  /// Type of the resource
  late final pulumi.Output<String> resourceType;

  /// Identifier of EC2 Transit Gateway Attachment.
  late final pulumi.Output<String> transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Policy Table.
  late final pulumi.Output<String> transitGatewayPolicyTableId;

  PolicyTableAssociation(
    String name, {
    PolicyTableAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/policyTableAssociation:PolicyTableAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
