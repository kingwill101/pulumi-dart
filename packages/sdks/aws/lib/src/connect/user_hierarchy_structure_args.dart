// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_hierarchy_structure_hierarchy_structure.dart';

/// {@template pulumi_connect_user_hierarchy_structure_user_hierarchy_structure_args_doc}
/// The set of arguments for UserHierarchyStructure.
/// {@endtemplate}
/// {@macro pulumi_connect_user_hierarchy_structure_user_hierarchy_structure_args_doc}
class UserHierarchyStructureArgs {
  /// A block that defines the hierarchy structure's levels. The `hierarchy_structure` block is documented below.
  final pulumi.Input<UserHierarchyStructureHierarchyStructure>
  hierarchyStructure;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [UserHierarchyStructureArgs].
  /// [hierarchyStructure] A block that defines the hierarchy structure's levels. The `hierarchy_structure` block is documented below.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  UserHierarchyStructureArgs({
    required this.hierarchyStructure,
    required this.instanceId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hierarchyStructure':
          pulumi.Input.mapInputValue<
            UserHierarchyStructureHierarchyStructure,
            Map<String, dynamic>
          >(hierarchyStructure, (value) => value.toMap()),
      'instanceId': instanceId,
      'region': ?region,
    };
  }

  factory UserHierarchyStructureArgs.fromMap(Map<String, dynamic> map) {
    return UserHierarchyStructureArgs(
      hierarchyStructure: pulumi.Input.fromValue(
        UserHierarchyStructureHierarchyStructure.fromMap(
          (map['hierarchyStructure']! as Map).cast<String, dynamic>(),
        ),
      ),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
