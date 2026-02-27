import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_group_redshift_args.dart';

/// Creates a new Amazon Redshift subnet group. You must provide a list of one or more subnets in your existing Amazon Virtual Private Cloud (Amazon VPC) when creating Amazon Redshift subnet group.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift subnet groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/subnetGroup:SubnetGroup testgroup1 test-cluster-subnet-group
/// ```
class SubnetGroupRedshift extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the Redshift Subnet group name
  late final pulumi.Output<String> arn;

  /// The description of the Redshift Subnet group. Defaults to "Managed by Pulumi".
  late final pulumi.Output<String> description;

  /// The name of the Redshift Subnet group.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// An array of VPC subnet IDs.
  late final pulumi.Output<List<String>> subnetIds;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  SubnetGroupRedshift(
    String name, {
    SubnetGroupRedshiftArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/subnetGroup:SubnetGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
