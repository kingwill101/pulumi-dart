// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_levels_access_level.dart';

/// {@template pulumi_accesscontextmanager_access_levels_access_levels_args_doc}
/// The set of arguments for AccessLevels.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_access_levels_access_levels_args_doc}
class AccessLevelsArgs {
  /// The desired Access Levels that should replace all existing Access Levels in the Access Policy.
  /// Structure is documented below.
  final pulumi.Input<List<AccessLevelsAccessLevel>>? accessLevels;
  /// The AccessPolicy this AccessLevel lives in.
  /// Format: accessPolicies/{policy_id}
  final pulumi.Input<String> parent;

  /// Creates a new [AccessLevelsArgs].
  /// [accessLevels] The desired Access Levels that should replace all existing Access Levels in the Access Policy.
  /// [parent] The AccessPolicy this AccessLevel lives in.
  AccessLevelsArgs({
    List<AccessLevelsAccessLevel>? accessLevels,
    required String parent,
  }) :
      accessLevels = pulumi.Input.asOptionalInput<List<AccessLevelsAccessLevel>>(accessLevels),
      parent = pulumi.Input.asInput<String>(parent);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevels': ?pulumi.Input.mapOptionalInputValue<List<AccessLevelsAccessLevel>, List<Map<String, dynamic>>>(accessLevels, (value) => pulumi.Input.encodeList<AccessLevelsAccessLevel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parent': parent,
    };
  }

  factory AccessLevelsArgs.fromMap(Map<String, dynamic> map) {
    return AccessLevelsArgs(
      accessLevels: map['accessLevels'] == null ? null : pulumi.Input.decodeList<AccessLevelsAccessLevel>(map['accessLevels'], (value) => AccessLevelsAccessLevel.fromMap((value as Map).cast<String, dynamic>())),
      parent: map['parent'] as String,
    );
  }
}

