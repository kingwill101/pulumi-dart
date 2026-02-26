// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_user_hierarchy_structure_hierarchy_structure_level_fife/get_user_hierarchy_structure_hierarchy_structure_level_fife.dart';
import '../get_user_hierarchy_structure_hierarchy_structure_level_four/get_user_hierarchy_structure_hierarchy_structure_level_four.dart';
import '../get_user_hierarchy_structure_hierarchy_structure_level_one/get_user_hierarchy_structure_hierarchy_structure_level_one.dart';
import '../get_user_hierarchy_structure_hierarchy_structure_level_three/get_user_hierarchy_structure_hierarchy_structure_level_three.dart';
import '../get_user_hierarchy_structure_hierarchy_structure_level_two/get_user_hierarchy_structure_hierarchy_structure_level_two.dart';

class GetUserHierarchyStructureHierarchyStructure {
  /// Details of level five. See below.
  final List<GetUserHierarchyStructureHierarchyStructureLevelFife> levelFives;

  /// Details of level four. See below.
  final List<GetUserHierarchyStructureHierarchyStructureLevelFour> levelFours;

  /// Details of level one. See below.
  final List<GetUserHierarchyStructureHierarchyStructureLevelOne> levelOnes;

  /// Details of level three. See below.
  final List<GetUserHierarchyStructureHierarchyStructureLevelThree> levelThrees;

  /// Details of level two. See below.
  final List<GetUserHierarchyStructureHierarchyStructureLevelTwo> levelTwos;

  GetUserHierarchyStructureHierarchyStructure({
    required this.levelFives,
    required this.levelFours,
    required this.levelOnes,
    required this.levelThrees,
    required this.levelTwos,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['levelFives'] = Input.encodeList<
        GetUserHierarchyStructureHierarchyStructureLevelFife,
        Map<String, dynamic>>(levelFives, (value) => value.toMap());
    map['levelFours'] = Input.encodeList<
        GetUserHierarchyStructureHierarchyStructureLevelFour,
        Map<String, dynamic>>(levelFours, (value) => value.toMap());
    map['levelOnes'] = Input.encodeList<
        GetUserHierarchyStructureHierarchyStructureLevelOne,
        Map<String, dynamic>>(levelOnes, (value) => value.toMap());
    map['levelThrees'] = Input.encodeList<
        GetUserHierarchyStructureHierarchyStructureLevelThree,
        Map<String, dynamic>>(levelThrees, (value) => value.toMap());
    map['levelTwos'] = Input.encodeList<
        GetUserHierarchyStructureHierarchyStructureLevelTwo,
        Map<String, dynamic>>(levelTwos, (value) => value.toMap());
    return map;
  }

  factory GetUserHierarchyStructureHierarchyStructure.fromMap(
      Map<String, dynamic> map) {
    return GetUserHierarchyStructureHierarchyStructure(
      levelFives: Input.decodeList<
              GetUserHierarchyStructureHierarchyStructureLevelFife>(
          map['levelFives'],
          (value) =>
              GetUserHierarchyStructureHierarchyStructureLevelFife.fromMap(
                  (value as Map).cast<String, dynamic>())),
      levelFours: Input.decodeList<
              GetUserHierarchyStructureHierarchyStructureLevelFour>(
          map['levelFours'],
          (value) =>
              GetUserHierarchyStructureHierarchyStructureLevelFour.fromMap(
                  (value as Map).cast<String, dynamic>())),
      levelOnes:
          Input.decodeList<GetUserHierarchyStructureHierarchyStructureLevelOne>(
              map['levelOnes'],
              (value) =>
                  GetUserHierarchyStructureHierarchyStructureLevelOne.fromMap(
                      (value as Map).cast<String, dynamic>())),
      levelThrees: Input.decodeList<
              GetUserHierarchyStructureHierarchyStructureLevelThree>(
          map['levelThrees'],
          (value) =>
              GetUserHierarchyStructureHierarchyStructureLevelThree.fromMap(
                  (value as Map).cast<String, dynamic>())),
      levelTwos:
          Input.decodeList<GetUserHierarchyStructureHierarchyStructureLevelTwo>(
              map['levelTwos'],
              (value) =>
                  GetUserHierarchyStructureHierarchyStructureLevelTwo.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
