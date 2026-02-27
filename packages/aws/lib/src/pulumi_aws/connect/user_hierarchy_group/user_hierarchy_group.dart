import 'package:pulumi/pulumi.dart';
import '../user_hierarchy_group_hierarchy_path/user_hierarchy_group_hierarchy_path.dart';
import 'user_hierarchy_group_args.dart';

/// Provides an Amazon Connect User Hierarchy Group resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// > **NOTE:** The User Hierarchy Structure must be created before creating a User Hierarchy Group.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### With a parent group
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect User Hierarchy Groups using the `instance_id` and `hierarchy_group_id` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/userHierarchyGroup:UserHierarchyGroup example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class UserHierarchyGroup extends CustomResource {
  /// The Amazon Resource Name (ARN) of the hierarchy group.
  late final Output<String> arn;

  /// The identifier for the hierarchy group.
  late final Output<String> hierarchyGroupId;

  /// A block that contains information about the levels in the hierarchy group. The `hierarchy_path` block is documented below.
  late final Output<List<UserHierarchyGroupHierarchyPath>> hierarchyPaths;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final Output<String> instanceId;

  /// The identifier of the level in the hierarchy group.
  late final Output<String> levelId;

  /// The name of the user hierarchy group. Must not be more than 100 characters.
  late final Output<String> name;

  /// The identifier for the parent hierarchy group. The user hierarchy is created at level one if the parent group ID is null.
  late final Output<String?> parentGroupId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Tags to apply to the hierarchy group. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  UserHierarchyGroup(
    String name, {
    UserHierarchyGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:connect/userHierarchyGroup:UserHierarchyGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.hierarchyGroupId = registerOutput<String>('hierarchyGroupId');
    this.hierarchyPaths =
        registerOutput<List<UserHierarchyGroupHierarchyPath>>('hierarchyPaths');
    this.instanceId = registerOutput<String>('instanceId');
    this.levelId = registerOutput<String>('levelId');
    this.name = registerOutput<String>('name');
    this.parentGroupId = registerOutput<String?>('parentGroupId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
