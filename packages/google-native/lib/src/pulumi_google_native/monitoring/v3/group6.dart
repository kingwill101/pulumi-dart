import 'package:pulumi/pulumi.dart';
import 'group_args6.dart';

/// Creates a new group.
/// Auto-naming is currently not supported for this resource.
class Group6 extends CustomResource {
  /// A user-assigned name for this group, used only for display purposes.
  late final Output<String> displayName;

  /// The filter used to determine which monitored resources belong to this group.
  late final Output<String> filter;

  /// If true, the members of this group are considered to be a cluster. The system can perform additional analysis on groups that are clusters.
  late final Output<bool> isCluster;

  /// The name of this group. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] When creating a group, this field is ignored and a new name is created consisting of the project specified in the call to CreateGroup and a unique [GROUP_ID] that is generated automatically.
  late final Output<String> name;

  /// The name of the group's parent, if it has one. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] For groups with no parent, parent_name is the empty string, "".
  late final Output<String> parentName;
  late final Output<String> project;

  Group6(
    String name, {
    GroupArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:monitoring/v3:Group',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.displayName = Output.createUnknown<String>();
    this.filter = Output.createUnknown<String>();
    this.isCluster = Output.createUnknown<bool>();
    this.name = Output.createUnknown<String>();
    this.parentName = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
