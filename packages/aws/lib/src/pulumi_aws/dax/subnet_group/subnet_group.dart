import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_group_args.dart';

/// Provides a DAX Subnet Group resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DAX Subnet Group using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:dax/subnetGroup:SubnetGroup example my_dax_sg
/// ```
class SubnetGroup extends pulumi.CustomResource {
  /// A description of the subnet group.
  late final pulumi.Output<String?> description;

  /// The name of the subnet group.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A list of VPC subnet IDs for the subnet group.
  late final pulumi.Output<List<String>> subnetIds;

  /// VPC ID of the subnet group.
  late final pulumi.Output<String> vpcId;

  SubnetGroup(
    String name, {
    SubnetGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dax/subnetGroup:SubnetGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
