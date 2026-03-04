// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_hierarchy_group_hierarchy_path_level_fife.dart';
import 'user_hierarchy_group_hierarchy_path_level_four.dart';
import 'user_hierarchy_group_hierarchy_path_level_one.dart';
import 'user_hierarchy_group_hierarchy_path_level_three.dart';
import 'user_hierarchy_group_hierarchy_path_level_two.dart';

class UserHierarchyGroupHierarchyPath {
  /// A block that defines the details of level five. The level block is documented below.
  final pulumi.Input<List<UserHierarchyGroupHierarchyPathLevelFife>>?
  levelFives;

  /// A block that defines the details of level four. The level block is documented below.
  final pulumi.Input<List<UserHierarchyGroupHierarchyPathLevelFour>>?
  levelFours;

  /// A block that defines the details of level one. The level block is documented below.
  final pulumi.Input<List<UserHierarchyGroupHierarchyPathLevelOne>>? levelOnes;

  /// A block that defines the details of level three. The level block is documented below.
  final pulumi.Input<List<UserHierarchyGroupHierarchyPathLevelThree>>?
  levelThrees;

  /// A block that defines the details of level two. The level block is documented below.
  final pulumi.Input<List<UserHierarchyGroupHierarchyPathLevelTwo>>? levelTwos;

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
    return <String, dynamic>{
      'levelFives':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserHierarchyGroupHierarchyPathLevelFife>,
            List<Map<String, dynamic>>
          >(
            levelFives,
            (value) =>
                pulumi.Input.encodeList<
                  UserHierarchyGroupHierarchyPathLevelFife,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'levelFours':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserHierarchyGroupHierarchyPathLevelFour>,
            List<Map<String, dynamic>>
          >(
            levelFours,
            (value) =>
                pulumi.Input.encodeList<
                  UserHierarchyGroupHierarchyPathLevelFour,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'levelOnes':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserHierarchyGroupHierarchyPathLevelOne>,
            List<Map<String, dynamic>>
          >(
            levelOnes,
            (value) =>
                pulumi.Input.encodeList<
                  UserHierarchyGroupHierarchyPathLevelOne,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'levelThrees':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserHierarchyGroupHierarchyPathLevelThree>,
            List<Map<String, dynamic>>
          >(
            levelThrees,
            (value) =>
                pulumi.Input.encodeList<
                  UserHierarchyGroupHierarchyPathLevelThree,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'levelTwos':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserHierarchyGroupHierarchyPathLevelTwo>,
            List<Map<String, dynamic>>
          >(
            levelTwos,
            (value) =>
                pulumi.Input.encodeList<
                  UserHierarchyGroupHierarchyPathLevelTwo,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory UserHierarchyGroupHierarchyPath.fromMap(Map<String, dynamic> map) {
    return UserHierarchyGroupHierarchyPath(
      levelFives: (() {
        final guardedValue = map['levelFives'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserHierarchyGroupHierarchyPathLevelFife>(
            guardedValue,
            (value) => UserHierarchyGroupHierarchyPathLevelFife.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      levelFours: (() {
        final guardedValue = map['levelFours'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserHierarchyGroupHierarchyPathLevelFour>(
            guardedValue,
            (value) => UserHierarchyGroupHierarchyPathLevelFour.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      levelOnes: (() {
        final guardedValue = map['levelOnes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserHierarchyGroupHierarchyPathLevelOne>(
            guardedValue,
            (value) => UserHierarchyGroupHierarchyPathLevelOne.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      levelThrees: (() {
        final guardedValue = map['levelThrees'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserHierarchyGroupHierarchyPathLevelThree>(
            guardedValue,
            (value) => UserHierarchyGroupHierarchyPathLevelThree.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      levelTwos: (() {
        final guardedValue = map['levelTwos'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserHierarchyGroupHierarchyPathLevelTwo>(
            guardedValue,
            (value) => UserHierarchyGroupHierarchyPathLevelTwo.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
