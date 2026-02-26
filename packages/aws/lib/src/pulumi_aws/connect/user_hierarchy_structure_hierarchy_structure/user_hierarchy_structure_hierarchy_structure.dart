// ignore_for_file: unused_element, unnecessary_cast

import '../user_hierarchy_structure_hierarchy_structure_level_five/user_hierarchy_structure_hierarchy_structure_level_five.dart';
import '../user_hierarchy_structure_hierarchy_structure_level_four/user_hierarchy_structure_hierarchy_structure_level_four.dart';
import '../user_hierarchy_structure_hierarchy_structure_level_one/user_hierarchy_structure_hierarchy_structure_level_one.dart';
import '../user_hierarchy_structure_hierarchy_structure_level_three/user_hierarchy_structure_hierarchy_structure_level_three.dart';
import '../user_hierarchy_structure_hierarchy_structure_level_two/user_hierarchy_structure_hierarchy_structure_level_two.dart';

class UserHierarchyStructureHierarchyStructure {
  /// A block that defines the details of level five. The level block is documented below.
  ///
  /// Each level block supports the following arguments:
  final UserHierarchyStructureHierarchyStructureLevelFive? levelFive;

  /// A block that defines the details of level four. The level block is documented below.
  final UserHierarchyStructureHierarchyStructureLevelFour? levelFour;

  /// A block that defines the details of level one. The level block is documented below.
  final UserHierarchyStructureHierarchyStructureLevelOne? levelOne;

  /// A block that defines the details of level three. The level block is documented below.
  final UserHierarchyStructureHierarchyStructureLevelThree? levelThree;

  /// A block that defines the details of level two. The level block is documented below.
  final UserHierarchyStructureHierarchyStructureLevelTwo? levelTwo;

  UserHierarchyStructureHierarchyStructure({
    this.levelFive,
    this.levelFour,
    this.levelOne,
    this.levelThree,
    this.levelTwo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final levelFiveValue = levelFive;
    if (levelFiveValue != null) {
      map['levelFive'] = levelFiveValue.toMap();
    }
    final levelFourValue = levelFour;
    if (levelFourValue != null) {
      map['levelFour'] = levelFourValue.toMap();
    }
    final levelOneValue = levelOne;
    if (levelOneValue != null) {
      map['levelOne'] = levelOneValue.toMap();
    }
    final levelThreeValue = levelThree;
    if (levelThreeValue != null) {
      map['levelThree'] = levelThreeValue.toMap();
    }
    final levelTwoValue = levelTwo;
    if (levelTwoValue != null) {
      map['levelTwo'] = levelTwoValue.toMap();
    }
    return map;
  }

  factory UserHierarchyStructureHierarchyStructure.fromMap(
      Map<String, dynamic> map) {
    return UserHierarchyStructureHierarchyStructure(
      levelFive: map['levelFive'] == null
          ? null
          : UserHierarchyStructureHierarchyStructureLevelFive.fromMap(
              (map['levelFive'] as Map).cast<String, dynamic>()),
      levelFour: map['levelFour'] == null
          ? null
          : UserHierarchyStructureHierarchyStructureLevelFour.fromMap(
              (map['levelFour'] as Map).cast<String, dynamic>()),
      levelOne: map['levelOne'] == null
          ? null
          : UserHierarchyStructureHierarchyStructureLevelOne.fromMap(
              (map['levelOne'] as Map).cast<String, dynamic>()),
      levelThree: map['levelThree'] == null
          ? null
          : UserHierarchyStructureHierarchyStructureLevelThree.fromMap(
              (map['levelThree'] as Map).cast<String, dynamic>()),
      levelTwo: map['levelTwo'] == null
          ? null
          : UserHierarchyStructureHierarchyStructureLevelTwo.fromMap(
              (map['levelTwo'] as Map).cast<String, dynamic>()),
    );
  }
}
