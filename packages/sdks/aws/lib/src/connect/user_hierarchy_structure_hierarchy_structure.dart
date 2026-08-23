// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_hierarchy_structure_hierarchy_structure_level_five.dart';
import 'user_hierarchy_structure_hierarchy_structure_level_four.dart';
import 'user_hierarchy_structure_hierarchy_structure_level_one.dart';
import 'user_hierarchy_structure_hierarchy_structure_level_three.dart';
import 'user_hierarchy_structure_hierarchy_structure_level_two.dart';

class UserHierarchyStructureHierarchyStructure {
  /// A block that defines the details of level five. The level block is documented below.
  ///
  /// Each level block supports the following arguments:
  final pulumi.Input<UserHierarchyStructureHierarchyStructureLevelFive>? levelFive;
  /// A block that defines the details of level four. The level block is documented below.
  final pulumi.Input<UserHierarchyStructureHierarchyStructureLevelFour>? levelFour;
  /// A block that defines the details of level one. The level block is documented below.
  final pulumi.Input<UserHierarchyStructureHierarchyStructureLevelOne>? levelOne;
  /// A block that defines the details of level three. The level block is documented below.
  final pulumi.Input<UserHierarchyStructureHierarchyStructureLevelThree>? levelThree;
  /// A block that defines the details of level two. The level block is documented below.
  final pulumi.Input<UserHierarchyStructureHierarchyStructureLevelTwo>? levelTwo;

  /// Creates a new [UserHierarchyStructureHierarchyStructure].
  /// [levelFive] A block that defines the details of level five. The level block is documented below.
  /// [levelFour] A block that defines the details of level four. The level block is documented below.
  /// [levelOne] A block that defines the details of level one. The level block is documented below.
  /// [levelThree] A block that defines the details of level three. The level block is documented below.
  /// [levelTwo] A block that defines the details of level two. The level block is documented below.
  const UserHierarchyStructureHierarchyStructure({
    this.levelFive,
    this.levelFour,
    this.levelOne,
    this.levelThree,
    this.levelTwo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'levelFive': ?pulumi.Input.mapOptionalInputValue<UserHierarchyStructureHierarchyStructureLevelFive, Map<String, dynamic>>(levelFive, (value) => value.toMap()),
      'levelFour': ?pulumi.Input.mapOptionalInputValue<UserHierarchyStructureHierarchyStructureLevelFour, Map<String, dynamic>>(levelFour, (value) => value.toMap()),
      'levelOne': ?pulumi.Input.mapOptionalInputValue<UserHierarchyStructureHierarchyStructureLevelOne, Map<String, dynamic>>(levelOne, (value) => value.toMap()),
      'levelThree': ?pulumi.Input.mapOptionalInputValue<UserHierarchyStructureHierarchyStructureLevelThree, Map<String, dynamic>>(levelThree, (value) => value.toMap()),
      'levelTwo': ?pulumi.Input.mapOptionalInputValue<UserHierarchyStructureHierarchyStructureLevelTwo, Map<String, dynamic>>(levelTwo, (value) => value.toMap()),
    };
  }

  factory UserHierarchyStructureHierarchyStructure.fromMap(Map<String, dynamic> map) {
    return UserHierarchyStructureHierarchyStructure(
      levelFive: (() { final guardedValue = map['levelFive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserHierarchyStructureHierarchyStructureLevelFive.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      levelFour: (() { final guardedValue = map['levelFour']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserHierarchyStructureHierarchyStructureLevelFour.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      levelOne: (() { final guardedValue = map['levelOne']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserHierarchyStructureHierarchyStructureLevelOne.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      levelThree: (() { final guardedValue = map['levelThree']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserHierarchyStructureHierarchyStructureLevelThree.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      levelTwo: (() { final guardedValue = map['levelTwo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserHierarchyStructureHierarchyStructureLevelTwo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
