// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_user_hierarchy_group_hierarchy_path_level_fife/get_user_hierarchy_group_hierarchy_path_level_fife.dart';
import '../get_user_hierarchy_group_hierarchy_path_level_four/get_user_hierarchy_group_hierarchy_path_level_four.dart';
import '../get_user_hierarchy_group_hierarchy_path_level_one/get_user_hierarchy_group_hierarchy_path_level_one.dart';
import '../get_user_hierarchy_group_hierarchy_path_level_three/get_user_hierarchy_group_hierarchy_path_level_three.dart';
import '../get_user_hierarchy_group_hierarchy_path_level_two/get_user_hierarchy_group_hierarchy_path_level_two.dart';

class GetUserHierarchyGroupHierarchyPath {
  /// Details of level five. See below.
  final List<GetUserHierarchyGroupHierarchyPathLevelFife> levelFives;

  /// Details of level four. See below.
  final List<GetUserHierarchyGroupHierarchyPathLevelFour> levelFours;

  /// Details of level one. See below.
  final List<GetUserHierarchyGroupHierarchyPathLevelOne> levelOnes;

  /// Details of level three. See below.
  final List<GetUserHierarchyGroupHierarchyPathLevelThree> levelThrees;

  /// Details of level two. See below.
  final List<GetUserHierarchyGroupHierarchyPathLevelTwo> levelTwos;

  GetUserHierarchyGroupHierarchyPath({
    required this.levelFives,
    required this.levelFours,
    required this.levelOnes,
    required this.levelThrees,
    required this.levelTwos,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['levelFives'] = pulumi.Input.encodeList<
        GetUserHierarchyGroupHierarchyPathLevelFife,
        Map<String, dynamic>>(levelFives, (value) => value.toMap());
    map['levelFours'] = pulumi.Input.encodeList<
        GetUserHierarchyGroupHierarchyPathLevelFour,
        Map<String, dynamic>>(levelFours, (value) => value.toMap());
    map['levelOnes'] = pulumi.Input.encodeList<
        GetUserHierarchyGroupHierarchyPathLevelOne,
        Map<String, dynamic>>(levelOnes, (value) => value.toMap());
    map['levelThrees'] = pulumi.Input.encodeList<
        GetUserHierarchyGroupHierarchyPathLevelThree,
        Map<String, dynamic>>(levelThrees, (value) => value.toMap());
    map['levelTwos'] = pulumi.Input.encodeList<
        GetUserHierarchyGroupHierarchyPathLevelTwo,
        Map<String, dynamic>>(levelTwos, (value) => value.toMap());
    return map;
  }

  factory GetUserHierarchyGroupHierarchyPath.fromMap(Map<String, dynamic> map) {
    return GetUserHierarchyGroupHierarchyPath(
      levelFives:
          pulumi.Input.decodeList<GetUserHierarchyGroupHierarchyPathLevelFife>(
              map['levelFives'],
              (value) => GetUserHierarchyGroupHierarchyPathLevelFife.fromMap(
                  (value as Map).cast<String, dynamic>())),
      levelFours:
          pulumi.Input.decodeList<GetUserHierarchyGroupHierarchyPathLevelFour>(
              map['levelFours'],
              (value) => GetUserHierarchyGroupHierarchyPathLevelFour.fromMap(
                  (value as Map).cast<String, dynamic>())),
      levelOnes:
          pulumi.Input.decodeList<GetUserHierarchyGroupHierarchyPathLevelOne>(
              map['levelOnes'],
              (value) => GetUserHierarchyGroupHierarchyPathLevelOne.fromMap(
                  (value as Map).cast<String, dynamic>())),
      levelThrees:
          pulumi.Input.decodeList<GetUserHierarchyGroupHierarchyPathLevelThree>(
              map['levelThrees'],
              (value) => GetUserHierarchyGroupHierarchyPathLevelThree.fromMap(
                  (value as Map).cast<String, dynamic>())),
      levelTwos:
          pulumi.Input.decodeList<GetUserHierarchyGroupHierarchyPathLevelTwo>(
              map['levelTwos'],
              (value) => GetUserHierarchyGroupHierarchyPathLevelTwo.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
