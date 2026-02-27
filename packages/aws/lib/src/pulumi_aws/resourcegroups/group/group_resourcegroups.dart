import 'package:pulumi/pulumi.dart' as pulumi;
import '../group_configuration/group_configuration.dart';
import '../group_resource_query/group_resource_query.dart';
import 'group_resourcegroups_args.dart';

/// Provides a Resource Group.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import resource groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:resourcegroups/group:Group foo resource-group-name
/// ```
class GroupResourcegroups extends pulumi.CustomResource {
  /// The ARN assigned by AWS for this resource group.
  late final pulumi.Output<String> arn;

  /// A configuration associates the resource group with an AWS service and specifies how the service can interact with the resources in the group. See below for details.
  late final pulumi.Output<List<GroupConfiguration>?> configurations;

  /// A description of the resource group.
  late final pulumi.Output<String?> description;

  /// The resource group's name. A resource group name can have a maximum of 127 characters, including letters, numbers, hyphens, dots, and underscores. The name cannot start with `AWS` or `aws`.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A `resource_query` block. Resource queries are documented below.
  late final pulumi.Output<GroupResourceQuery?> resourceQuery;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  GroupResourcegroups(
    String name, {
    GroupResourcegroupsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resourcegroups/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.configurations =
        registerOutput<List<GroupConfiguration>?>('configurations');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.resourceQuery = registerOutput<GroupResourceQuery?>('resourceQuery');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
