import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';

/// Create a group.
class Group extends pulumi.CustomResource {
  /// The display name of the group.
  late final pulumi.Output<String> displayName;

  /// Optional. The "alias" to use for the group, which will become the final component of the group's resource name. This value must be unique per project. The field is named `groupId` to comply with AIP guidance for user-specified IDs. This value should be 4-63 characters, and valid characters are `/a-z-/`. If not set, it will be generated based on the display name.
  late final pulumi.Output<String?> groupId;

  /// The number of invite links for this group.
  late final pulumi.Output<int> inviteLinkCount;

  /// The name of the group resource. Format: `projects/{project_number}/groups/{group_alias}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The number of releases this group is permitted to access.
  late final pulumi.Output<int> releaseCount;

  /// The number of testers who are members of this group.
  late final pulumi.Output<int> testerCount;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_firebaseappdistribution_v1_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(String name, {GroupArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:firebaseappdistribution/v1:Group',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.displayName = registerOutput<String>('displayName');
    this.groupId = registerOutput<String?>('groupId');
    this.inviteLinkCount = registerOutput<int>('inviteLinkCount');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.releaseCount = registerOutput<int>('releaseCount');
    this.testerCount = registerOutput<int>('testerCount');
  }
}
