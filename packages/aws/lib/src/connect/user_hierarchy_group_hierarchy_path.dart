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
    return <String, dynamic>{
      'levelFives': ?levelFives == null
          ? null
          : pulumi.Input.encodeList<
              UserHierarchyGroupHierarchyPathLevelFife,
              Map<String, dynamic>
            >(levelFives!, (value) => value.toMap()),
      'levelFours': ?levelFours == null
          ? null
          : pulumi.Input.encodeList<
              UserHierarchyGroupHierarchyPathLevelFour,
              Map<String, dynamic>
            >(levelFours!, (value) => value.toMap()),
      'levelOnes': ?levelOnes == null
          ? null
          : pulumi.Input.encodeList<
              UserHierarchyGroupHierarchyPathLevelOne,
              Map<String, dynamic>
            >(levelOnes!, (value) => value.toMap()),
      'levelThrees': ?levelThrees == null
          ? null
          : pulumi.Input.encodeList<
              UserHierarchyGroupHierarchyPathLevelThree,
              Map<String, dynamic>
            >(levelThrees!, (value) => value.toMap()),
      'levelTwos': ?levelTwos == null
          ? null
          : pulumi.Input.encodeList<
              UserHierarchyGroupHierarchyPathLevelTwo,
              Map<String, dynamic>
            >(levelTwos!, (value) => value.toMap()),
    };
  }

  factory UserHierarchyGroupHierarchyPath.fromMap(Map<String, dynamic> map) {
    return UserHierarchyGroupHierarchyPath(
      levelFives: map['levelFives'] == null
          ? null
          : pulumi.Input.decodeList<UserHierarchyGroupHierarchyPathLevelFife>(
              map['levelFives'],
              (value) => UserHierarchyGroupHierarchyPathLevelFife.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      levelFours: map['levelFours'] == null
          ? null
          : pulumi.Input.decodeList<UserHierarchyGroupHierarchyPathLevelFour>(
              map['levelFours'],
              (value) => UserHierarchyGroupHierarchyPathLevelFour.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      levelOnes: map['levelOnes'] == null
          ? null
          : pulumi.Input.decodeList<UserHierarchyGroupHierarchyPathLevelOne>(
              map['levelOnes'],
              (value) => UserHierarchyGroupHierarchyPathLevelOne.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      levelThrees: map['levelThrees'] == null
          ? null
          : pulumi.Input.decodeList<UserHierarchyGroupHierarchyPathLevelThree>(
              map['levelThrees'],
              (value) => UserHierarchyGroupHierarchyPathLevelThree.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      levelTwos: map['levelTwos'] == null
          ? null
          : pulumi.Input.decodeList<UserHierarchyGroupHierarchyPathLevelTwo>(
              map['levelTwos'],
              (value) => UserHierarchyGroupHierarchyPathLevelTwo.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
