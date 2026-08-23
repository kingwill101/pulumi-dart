// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_hierarchy_group_hierarchy_path_level_fife.dart';
import 'get_user_hierarchy_group_hierarchy_path_level_four.dart';
import 'get_user_hierarchy_group_hierarchy_path_level_one.dart';
import 'get_user_hierarchy_group_hierarchy_path_level_three.dart';
import 'get_user_hierarchy_group_hierarchy_path_level_two.dart';

class GetUserHierarchyGroupHierarchyPath {
  /// Details of level five. See below.
  final pulumi.Input<List<GetUserHierarchyGroupHierarchyPathLevelFife>> levelFives;
  /// Details of level four. See below.
  final pulumi.Input<List<GetUserHierarchyGroupHierarchyPathLevelFour>> levelFours;
  /// Details of level one. See below.
  final pulumi.Input<List<GetUserHierarchyGroupHierarchyPathLevelOne>> levelOnes;
  /// Details of level three. See below.
  final pulumi.Input<List<GetUserHierarchyGroupHierarchyPathLevelThree>> levelThrees;
  /// Details of level two. See below.
  final pulumi.Input<List<GetUserHierarchyGroupHierarchyPathLevelTwo>> levelTwos;

  /// Creates a new [GetUserHierarchyGroupHierarchyPath].
  /// [levelFives] Details of level five. See below.
  /// [levelFours] Details of level four. See below.
  /// [levelOnes] Details of level one. See below.
  /// [levelThrees] Details of level three. See below.
  /// [levelTwos] Details of level two. See below.
  const GetUserHierarchyGroupHierarchyPath({
    required this.levelFives,
    required this.levelFours,
    required this.levelOnes,
    required this.levelThrees,
    required this.levelTwos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'levelFives': pulumi.Input.mapInputValue<List<GetUserHierarchyGroupHierarchyPathLevelFife>, List<Map<String, dynamic>>>(levelFives, (value) => pulumi.Input.encodeList<GetUserHierarchyGroupHierarchyPathLevelFife, Map<String, dynamic>>(value, (value) => value.toMap())),
      'levelFours': pulumi.Input.mapInputValue<List<GetUserHierarchyGroupHierarchyPathLevelFour>, List<Map<String, dynamic>>>(levelFours, (value) => pulumi.Input.encodeList<GetUserHierarchyGroupHierarchyPathLevelFour, Map<String, dynamic>>(value, (value) => value.toMap())),
      'levelOnes': pulumi.Input.mapInputValue<List<GetUserHierarchyGroupHierarchyPathLevelOne>, List<Map<String, dynamic>>>(levelOnes, (value) => pulumi.Input.encodeList<GetUserHierarchyGroupHierarchyPathLevelOne, Map<String, dynamic>>(value, (value) => value.toMap())),
      'levelThrees': pulumi.Input.mapInputValue<List<GetUserHierarchyGroupHierarchyPathLevelThree>, List<Map<String, dynamic>>>(levelThrees, (value) => pulumi.Input.encodeList<GetUserHierarchyGroupHierarchyPathLevelThree, Map<String, dynamic>>(value, (value) => value.toMap())),
      'levelTwos': pulumi.Input.mapInputValue<List<GetUserHierarchyGroupHierarchyPathLevelTwo>, List<Map<String, dynamic>>>(levelTwos, (value) => pulumi.Input.encodeList<GetUserHierarchyGroupHierarchyPathLevelTwo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetUserHierarchyGroupHierarchyPath.fromMap(Map<String, dynamic> map) {
    return GetUserHierarchyGroupHierarchyPath(
      levelFives: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserHierarchyGroupHierarchyPathLevelFife>(map['levelFives']!, (value) => GetUserHierarchyGroupHierarchyPathLevelFife.fromMap((value as Map).cast<String, dynamic>()))),
      levelFours: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserHierarchyGroupHierarchyPathLevelFour>(map['levelFours']!, (value) => GetUserHierarchyGroupHierarchyPathLevelFour.fromMap((value as Map).cast<String, dynamic>()))),
      levelOnes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserHierarchyGroupHierarchyPathLevelOne>(map['levelOnes']!, (value) => GetUserHierarchyGroupHierarchyPathLevelOne.fromMap((value as Map).cast<String, dynamic>()))),
      levelThrees: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserHierarchyGroupHierarchyPathLevelThree>(map['levelThrees']!, (value) => GetUserHierarchyGroupHierarchyPathLevelThree.fromMap((value as Map).cast<String, dynamic>()))),
      levelTwos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserHierarchyGroupHierarchyPathLevelTwo>(map['levelTwos']!, (value) => GetUserHierarchyGroupHierarchyPathLevelTwo.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
