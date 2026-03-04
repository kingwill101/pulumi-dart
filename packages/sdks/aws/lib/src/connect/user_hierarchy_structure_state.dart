// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_hierarchy_structure_hierarchy_structure.dart';

/// Input properties used for looking up and filtering UserHierarchyStructure resources.
class UserHierarchyStructureState {
  /// A block that defines the hierarchy structure's levels. The `hierarchy_structure` block is documented below.
  final pulumi.Input<UserHierarchyStructureHierarchyStructure>?
  hierarchyStructure;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String>? instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [UserHierarchyStructureState].
  /// [hierarchyStructure] A block that defines the hierarchy structure's levels. The `hierarchy_structure` block is documented below.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  UserHierarchyStructureState({
    this.hierarchyStructure,
    this.instanceId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hierarchyStructure':
          ?pulumi.Input.mapOptionalInputValue<
            UserHierarchyStructureHierarchyStructure,
            Map<String, dynamic>
          >(hierarchyStructure, (value) => value.toMap()),
      'instanceId': ?instanceId,
      'region': ?region,
    };
  }

  factory UserHierarchyStructureState.fromMap(Map<String, dynamic> map) {
    return UserHierarchyStructureState(
      hierarchyStructure: (() {
        final guardedValue = map['hierarchyStructure'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          UserHierarchyStructureHierarchyStructure.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
