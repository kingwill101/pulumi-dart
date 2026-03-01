// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_hierarchy_structure_hierarchy_structure.dart';

/// {@template pulumi_connect_user_hierarchy_structure_user_hierarchy_structure_args_doc}
/// The set of arguments for UserHierarchyStructure.
/// {@endtemplate}
/// {@macro pulumi_connect_user_hierarchy_structure_user_hierarchy_structure_args_doc}
class UserHierarchyStructureArgs {
  /// A block that defines the hierarchy structure's levels. The `hierarchy_structure` block is documented below.
  final pulumi.Input<UserHierarchyStructureHierarchyStructure> hierarchyStructure;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String> instanceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [UserHierarchyStructureArgs].
  /// [hierarchyStructure] A block that defines the hierarchy structure's levels. The `hierarchy_structure` block is documented below.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  UserHierarchyStructureArgs({
    required pulumi.Output<UserHierarchyStructureHierarchyStructure> hierarchyStructure,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? region,
  }) :
      hierarchyStructure = pulumi.Input.asInput<UserHierarchyStructureHierarchyStructure>(hierarchyStructure),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hierarchyStructure': pulumi.Input.mapInputValue<UserHierarchyStructureHierarchyStructure, Map<String, dynamic>>(hierarchyStructure, (value) => value.toMap()),
      'instanceId': instanceId,
      'region': ?region,
    };
  }

  factory UserHierarchyStructureArgs.fromMap(Map<String, dynamic> map) {
    return UserHierarchyStructureArgs(
      hierarchyStructure: pulumi.Output.create<UserHierarchyStructureHierarchyStructure>(UserHierarchyStructureHierarchyStructure.fromMap((map['hierarchyStructure'] as Map).cast<String, dynamic>())),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

