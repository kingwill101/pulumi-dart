// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_hierarchy_structure_hierarchy_structure.dart';

/// Input properties used for looking up and filtering UserHierarchyStructure resources.
class UserHierarchyStructureState {
  /// A block that defines the hierarchy structure's levels. The `hierarchy_structure` block is documented below.
  final pulumi.Input<UserHierarchyStructureHierarchyStructure>? hierarchyStructure;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String>? instanceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [UserHierarchyStructureState].
  /// [hierarchyStructure] A block that defines the hierarchy structure's levels. The `hierarchy_structure` block is documented below.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  UserHierarchyStructureState({
    pulumi.Output<UserHierarchyStructureHierarchyStructure>? hierarchyStructure,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? region,
  }) :
      hierarchyStructure = pulumi.Input.asOptionalInput<UserHierarchyStructureHierarchyStructure>(hierarchyStructure),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hierarchyStructure': ?pulumi.Input.mapOptionalInputValue<UserHierarchyStructureHierarchyStructure, Map<String, dynamic>>(hierarchyStructure, (value) => value.toMap()),
      'instanceId': ?instanceId,
      'region': ?region,
    };
  }

  factory UserHierarchyStructureState.fromMap(Map<String, dynamic> map) {
    return UserHierarchyStructureState(
      hierarchyStructure: map['hierarchyStructure'] == null ? null : pulumi.Output.create<UserHierarchyStructureHierarchyStructure>(UserHierarchyStructureHierarchyStructure.fromMap((map['hierarchyStructure'] as Map).cast<String, dynamic>())),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

