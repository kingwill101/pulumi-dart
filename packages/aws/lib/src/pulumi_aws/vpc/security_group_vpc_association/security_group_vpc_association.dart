import 'package:pulumi/pulumi.dart';
import '../security_group_vpc_association_timeouts/security_group_vpc_association_timeouts.dart';
import 'security_group_vpc_association_args.dart';

/// Resource for managing Security Group VPC Associations.
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
/// * `vpc_id` (String) VPC ID.
/// * `security_group_id` (String) Security Group ID.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import a Security Group VPC Association using the `security_group_id` and `vpc_id` arguments, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:vpc/securityGroupVpcAssociation:SecurityGroupVpcAssociation example sg-12345,vpc-67890
/// ```
class SecurityGroupVpcAssociation extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the security group.
  late final Output<String> securityGroupId;

  /// State of the VPC association. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroupVpcAssociation.html) for possible values.
  late final Output<String> state;
  late final Output<SecurityGroupVpcAssociationTimeouts?> timeouts;

  /// The ID of the VPC to make the association with.
  late final Output<String> vpcId;

  SecurityGroupVpcAssociation(
    String name, {
    SecurityGroupVpcAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpc/securityGroupVpcAssociation:SecurityGroupVpcAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.state = registerOutput<String>('state');
    this.timeouts =
        registerOutput<SecurityGroupVpcAssociationTimeouts?>('timeouts');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
