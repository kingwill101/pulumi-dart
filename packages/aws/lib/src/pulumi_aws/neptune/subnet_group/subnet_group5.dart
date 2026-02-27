import 'package:pulumi/pulumi.dart';
import 'subnet_group_args5.dart';

/// Provides an Neptune subnet group resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Neptune Subnet groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/subnetGroup:SubnetGroup default production-subnet-group
/// ```
class SubnetGroup5 extends CustomResource {
  /// The ARN of the neptune subnet group.
  late final Output<String> arn;

  /// The description of the neptune subnet group. Defaults to "Managed by Pulumi".
  late final Output<String> description;

  /// The name of the neptune subnet group. If omitted, this provider will assign a random, unique name.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A list of VPC subnet IDs.
  late final Output<List<String>> subnetIds;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  SubnetGroup5(
    String name, {
    SubnetGroupArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:neptune/subnetGroup:SubnetGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
