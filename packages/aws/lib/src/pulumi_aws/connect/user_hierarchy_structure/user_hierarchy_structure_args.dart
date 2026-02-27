// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../user_hierarchy_structure_hierarchy_structure/user_hierarchy_structure_hierarchy_structure.dart';

/// The set of arguments for UserHierarchyStructure.
class UserHierarchyStructureArgs {
  /// A block that defines the hierarchy structure's levels. The `hierarchy_structure` block is documented below.
  final pulumi.Input<UserHierarchyStructureHierarchyStructure>
      hierarchyStructure;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  UserHierarchyStructureArgs({
    required this.hierarchyStructure,
    required this.instanceId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hierarchyStructure'] = pulumi.Input.mapInputValue<
        UserHierarchyStructureHierarchyStructure,
        Map<String, dynamic>>(hierarchyStructure, (value) => value.toMap());
    map['instanceId'] = instanceId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory UserHierarchyStructureArgs.fromMap(Map<String, dynamic> map) {
    return UserHierarchyStructureArgs(
      hierarchyStructure:
          pulumi.Input.asInput<UserHierarchyStructureHierarchyStructure>(
              map['hierarchyStructure']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
