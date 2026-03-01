// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_hierarchy_group_hierarchy_path_level_fife.dart';
import 'get_user_hierarchy_group_hierarchy_path_level_four.dart';
import 'get_user_hierarchy_group_hierarchy_path_level_one.dart';
import 'get_user_hierarchy_group_hierarchy_path_level_three.dart';
import 'get_user_hierarchy_group_hierarchy_path_level_two.dart';

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

  /// Creates a new [GetUserHierarchyGroupHierarchyPath].
  /// [levelFives] Details of level five. See below.
  /// [levelFours] Details of level four. See below.
  /// [levelOnes] Details of level one. See below.
  /// [levelThrees] Details of level three. See below.
  /// [levelTwos] Details of level two. See below.
  GetUserHierarchyGroupHierarchyPath({
    required this.levelFives,
    required this.levelFours,
    required this.levelOnes,
    required this.levelThrees,
    required this.levelTwos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'levelFives':
          pulumi.Input.encodeList<
            GetUserHierarchyGroupHierarchyPathLevelFife,
            Map<String, dynamic>
          >(levelFives, (value) => value.toMap()),
      'levelFours':
          pulumi.Input.encodeList<
            GetUserHierarchyGroupHierarchyPathLevelFour,
            Map<String, dynamic>
          >(levelFours, (value) => value.toMap()),
      'levelOnes':
          pulumi.Input.encodeList<
            GetUserHierarchyGroupHierarchyPathLevelOne,
            Map<String, dynamic>
          >(levelOnes, (value) => value.toMap()),
      'levelThrees':
          pulumi.Input.encodeList<
            GetUserHierarchyGroupHierarchyPathLevelThree,
            Map<String, dynamic>
          >(levelThrees, (value) => value.toMap()),
      'levelTwos':
          pulumi.Input.encodeList<
            GetUserHierarchyGroupHierarchyPathLevelTwo,
            Map<String, dynamic>
          >(levelTwos, (value) => value.toMap()),
    };
  }

  factory GetUserHierarchyGroupHierarchyPath.fromMap(Map<String, dynamic> map) {
    return GetUserHierarchyGroupHierarchyPath(
      levelFives:
          pulumi.Input.decodeList<GetUserHierarchyGroupHierarchyPathLevelFife>(
            map['levelFives'],
            (value) => GetUserHierarchyGroupHierarchyPathLevelFife.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      levelFours:
          pulumi.Input.decodeList<GetUserHierarchyGroupHierarchyPathLevelFour>(
            map['levelFours'],
            (value) => GetUserHierarchyGroupHierarchyPathLevelFour.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      levelOnes:
          pulumi.Input.decodeList<GetUserHierarchyGroupHierarchyPathLevelOne>(
            map['levelOnes'],
            (value) => GetUserHierarchyGroupHierarchyPathLevelOne.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      levelThrees:
          pulumi.Input.decodeList<GetUserHierarchyGroupHierarchyPathLevelThree>(
            map['levelThrees'],
            (value) => GetUserHierarchyGroupHierarchyPathLevelThree.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      levelTwos:
          pulumi.Input.decodeList<GetUserHierarchyGroupHierarchyPathLevelTwo>(
            map['levelTwos'],
            (value) => GetUserHierarchyGroupHierarchyPathLevelTwo.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
