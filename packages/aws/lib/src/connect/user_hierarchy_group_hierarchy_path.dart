// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_hierarchy_group_hierarchy_path_level_fife.dart';
import 'user_hierarchy_group_hierarchy_path_level_four.dart';
import 'user_hierarchy_group_hierarchy_path_level_one.dart';
import 'user_hierarchy_group_hierarchy_path_level_three.dart';
import 'user_hierarchy_group_hierarchy_path_level_two.dart';

class UserHierarchyGroupHierarchyPath {
  /// A block that defines the details of level five. The level block is documented below.
  final List<UserHierarchyGroupHierarchyPathLevelFife>? levelFives;

  /// A block that defines the details of level four. The level block is documented below.
  final List<UserHierarchyGroupHierarchyPathLevelFour>? levelFours;

  /// A block that defines the details of level one. The level block is documented below.
  final List<UserHierarchyGroupHierarchyPathLevelOne>? levelOnes;

  /// A block that defines the details of level three. The level block is documented below.
  final List<UserHierarchyGroupHierarchyPathLevelThree>? levelThrees;

  /// A block that defines the details of level two. The level block is documented below.
  final List<UserHierarchyGroupHierarchyPathLevelTwo>? levelTwos;

  /// Creates a new [UserHierarchyGroupHierarchyPath].
  /// [levelFives] A block that defines the details of level five. The level block is documented below.
  /// [levelFours] A block that defines the details of level four. The level block is documented below.
  /// [levelOnes] A block that defines the details of level one. The level block is documented below.
  /// [levelThrees] A block that defines the details of level three. The level block is documented below.
  /// [levelTwos] A block that defines the details of level two. The level block is documented below.
  UserHierarchyGroupHierarchyPath({
    this.levelFives,
    this.levelFours,
    this.levelOnes,
    this.levelThrees,
    this.levelTwos,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final levelFivesValue = levelFives;
    if (levelFivesValue != null) {
      map['levelFives'] = pulumi.Input.encodeList<
          UserHierarchyGroupHierarchyPathLevelFife,
          Map<String, dynamic>>(levelFivesValue, (value) => value.toMap());
    }
    final levelFoursValue = levelFours;
    if (levelFoursValue != null) {
      map['levelFours'] = pulumi.Input.encodeList<
          UserHierarchyGroupHierarchyPathLevelFour,
          Map<String, dynamic>>(levelFoursValue, (value) => value.toMap());
    }
    final levelOnesValue = levelOnes;
    if (levelOnesValue != null) {
      map['levelOnes'] = pulumi.Input.encodeList<
          UserHierarchyGroupHierarchyPathLevelOne,
          Map<String, dynamic>>(levelOnesValue, (value) => value.toMap());
    }
    final levelThreesValue = levelThrees;
    if (levelThreesValue != null) {
      map['levelThrees'] = pulumi.Input.encodeList<
          UserHierarchyGroupHierarchyPathLevelThree,
          Map<String, dynamic>>(levelThreesValue, (value) => value.toMap());
    }
    final levelTwosValue = levelTwos;
    if (levelTwosValue != null) {
      map['levelTwos'] = pulumi.Input.encodeList<
          UserHierarchyGroupHierarchyPathLevelTwo,
          Map<String, dynamic>>(levelTwosValue, (value) => value.toMap());
    }
    return map;
  }

  factory UserHierarchyGroupHierarchyPath.fromMap(Map<String, dynamic> map) {
    return UserHierarchyGroupHierarchyPath(
      levelFives: map['levelFives'] == null
          ? null
          : pulumi.Input.decodeList<UserHierarchyGroupHierarchyPathLevelFife>(
              map['levelFives'],
              (value) => UserHierarchyGroupHierarchyPathLevelFife.fromMap(
                  (value as Map).cast<String, dynamic>())),
      levelFours: map['levelFours'] == null
          ? null
          : pulumi.Input.decodeList<UserHierarchyGroupHierarchyPathLevelFour>(
              map['levelFours'],
              (value) => UserHierarchyGroupHierarchyPathLevelFour.fromMap(
                  (value as Map).cast<String, dynamic>())),
      levelOnes: map['levelOnes'] == null
          ? null
          : pulumi.Input.decodeList<UserHierarchyGroupHierarchyPathLevelOne>(
              map['levelOnes'],
              (value) => UserHierarchyGroupHierarchyPathLevelOne.fromMap(
                  (value as Map).cast<String, dynamic>())),
      levelThrees: map['levelThrees'] == null
          ? null
          : pulumi.Input.decodeList<UserHierarchyGroupHierarchyPathLevelThree>(
              map['levelThrees'],
              (value) => UserHierarchyGroupHierarchyPathLevelThree.fromMap(
                  (value as Map).cast<String, dynamic>())),
      levelTwos: map['levelTwos'] == null
          ? null
          : pulumi.Input.decodeList<UserHierarchyGroupHierarchyPathLevelTwo>(
              map['levelTwos'],
              (value) => UserHierarchyGroupHierarchyPathLevelTwo.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
