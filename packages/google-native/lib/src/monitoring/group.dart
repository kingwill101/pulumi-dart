import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';

/// Creates a new group.
/// Auto-naming is currently not supported for this resource.
class Group extends pulumi.CustomResource {
  /// A user-assigned name for this group, used only for display purposes.
  late final pulumi.Output<String> displayName;
  /// The filter used to determine which monitored resources belong to this group.
  late final pulumi.Output<String> filter;
  /// If true, the members of this group are considered to be a cluster. The system can perform additional analysis on groups that are clusters.
  late final pulumi.Output<bool> isCluster;
  /// The name of this group. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] When creating a group, this field is ignored and a new name is created consisting of the project specified in the call to CreateGroup and a unique [GROUP_ID] that is generated automatically.
  late final pulumi.Output<String> name;
  /// The name of the group's parent, if it has one. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] For groups with no parent, parent_name is the empty string, "".
  late final pulumi.Output<String> parentName;
  late final pulumi.Output<String> project;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_monitoring_v3_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(
    String name, {
    GroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:monitoring/v3:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.filter = registerOutput<String>('filter');
    this.isCluster = registerOutput<bool>('isCluster');
    this.name = registerOutput<String>('name');
    this.parentName = registerOutput<String>('parentName');
    this.project = registerOutput<String>('project');
  }
}
