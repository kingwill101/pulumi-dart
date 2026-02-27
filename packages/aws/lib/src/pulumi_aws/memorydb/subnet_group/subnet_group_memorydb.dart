import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_group_memorydb_args.dart';

/// Provides a MemoryDB Subnet Group.
///
/// More information about subnet groups can be found in the [MemoryDB User Guide](https://docs.aws.amazon.com/memorydb/latest/devguide/subnetgroups.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a subnet group using its `name`. For example:
///
/// ```sh
/// $ pulumi import aws:memorydb/subnetGroup:SubnetGroup example my-subnet-group
/// ```
class SubnetGroupMemorydb extends pulumi.CustomResource {
  /// The ARN of the subnet group.
  late final pulumi.Output<String> arn;

  /// Description for the subnet group. Defaults to `"Managed by Pulumi"`.
  late final pulumi.Output<String?> description;

  /// Name of the subnet group. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Set of VPC Subnet ID-s for the subnet group. At least one subnet must be provided.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> subnetIds;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The VPC in which the subnet group exists.
  late final pulumi.Output<String> vpcId;

  SubnetGroupMemorydb(
    String name, {
    SubnetGroupMemorydbArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/subnetGroup:SubnetGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
