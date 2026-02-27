import 'package:pulumi/pulumi.dart';
import '../user_hierarchy_structure_hierarchy_structure/user_hierarchy_structure_hierarchy_structure.dart';
import 'user_hierarchy_structure_args.dart';

/// Provides an Amazon Connect User Hierarchy Structure resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### With Five Levels
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect User Hierarchy Structures using the `instance_id`. For example:
///
/// ```sh
/// $ pulumi import aws:connect/userHierarchyStructure:UserHierarchyStructure example f1288a1f-6193-445a-b47e-af739b2
/// ```
class UserHierarchyStructure extends CustomResource {
  /// A block that defines the hierarchy structure's levels. The `hierarchy_structure` block is documented below.
  late final Output<UserHierarchyStructureHierarchyStructure>
      hierarchyStructure;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final Output<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  UserHierarchyStructure(
    String name, {
    UserHierarchyStructureArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:connect/userHierarchyStructure:UserHierarchyStructure',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.hierarchyStructure =
        registerOutput<UserHierarchyStructureHierarchyStructure>(
            'hierarchyStructure');
    this.instanceId = registerOutput<String>('instanceId');
    this.region = registerOutput<String>('region');
  }
}
