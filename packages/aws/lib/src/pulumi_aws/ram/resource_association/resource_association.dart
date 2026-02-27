import 'package:pulumi/pulumi.dart';
import 'resource_association_args.dart';

/// Manages a Resource Access Manager (RAM) Resource Association.
///
/// > *NOTE:* Certain AWS resources (e.g., EC2 Subnets) can only be shared in an AWS account that is a member of an AWS Organizations organization with organization-wide Resource Access Manager functionality enabled. See the [Resource Access Manager User Guide](https://docs.aws.amazon.com/ram/latest/userguide/what-is.html) and AWS service specific documentation for additional information.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import RAM Resource Associations using their Resource Share ARN and Resource ARN separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:ram/resourceAssociation:ResourceAssociation example arn:aws:ram:eu-west-1:123456789012:resource-share/73da1ab9-b94a-4ba3-8eb4-45917f7f4b12,arn:aws:ec2:eu-west-1:123456789012:subnet/subnet-12345678
/// ```
class ResourceAssociation extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) of the resource to associate with the RAM Resource Share.
  late final Output<String> resourceArn;

  /// Amazon Resource Name (ARN) of the RAM Resource Share.
  late final Output<String> resourceShareArn;

  ResourceAssociation(
    String name, {
    ResourceAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ram/resourceAssociation:ResourceAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.resourceShareArn = registerOutput<String>('resourceShareArn');
  }
}
