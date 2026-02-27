// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../access_levels_access_level/access_levels_access_level.dart';

/// The set of arguments for AccessLevels.
class AccessLevelsArgs {
  /// The desired Access Levels that should replace all existing Access Levels in the Access Policy.
  /// Structure is documented below.
  final pulumi.Input<List<AccessLevelsAccessLevel>>? accessLevels;

  /// The AccessPolicy this AccessLevel lives in.
  /// Format: accessPolicies/{policy_id}
  final pulumi.Input<String> parent;

  AccessLevelsArgs({
    this.accessLevels,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessLevelsValue = accessLevels;
    if (accessLevelsValue != null) {
      map['accessLevels'] = pulumi.Input.mapOptionalInputValue<
              List<AccessLevelsAccessLevel>, List<Map<String, dynamic>>>(
          accessLevelsValue,
          (value) => pulumi.Input.encodeList<AccessLevelsAccessLevel,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['parent'] = parent;
    return map;
  }

  factory AccessLevelsArgs.fromMap(Map<String, dynamic> map) {
    return AccessLevelsArgs(
      accessLevels: pulumi.Input.asOptionalInput<List<AccessLevelsAccessLevel>>(
          map['accessLevels']),
      parent: pulumi.Input.asInput<String>(map['parent']),
    );
  }
}
