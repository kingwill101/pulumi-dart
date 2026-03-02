// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'users_or_service_principal_set.dart';

/// The PIM Only Mode settings.
class PIMOnlyModeSettings {
  /// The list of excluded assignment types allowed.
  final pulumi.Input<List<String>>? excludedAssignmentTypes;
  /// The list of excluded entities that the rule does not apply to.
  final pulumi.Input<List<UsersOrServicePrincipalSet>>? excludes;
  /// Determines whether the setting is enabled, disabled or report only.
  final pulumi.Input<String>? mode;

  /// Creates a new [PIMOnlyModeSettings].
  /// [excludedAssignmentTypes] The list of excluded assignment types allowed.
  /// [excludes] The list of excluded entities that the rule does not apply to.
  /// [mode] Determines whether the setting is enabled, disabled or report only.
  PIMOnlyModeSettings({
    this.excludedAssignmentTypes,
    this.excludes,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedAssignmentTypes': ?excludedAssignmentTypes,
      'excludes': ?pulumi.Input.mapOptionalInputValue<List<UsersOrServicePrincipalSet>, List<Map<String, dynamic>>>(excludes, (value) => pulumi.Input.encodeList<UsersOrServicePrincipalSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': ?mode,
    };
  }

  factory PIMOnlyModeSettings.fromMap(Map<String, dynamic> map) {
    return PIMOnlyModeSettings(
      excludedAssignmentTypes: map['excludedAssignmentTypes'] == null ? null : ((map['excludedAssignmentTypes']! as List).cast<String>()).input(),
      excludes: map['excludes'] == null ? null : (pulumi.Input.decodeList<UsersOrServicePrincipalSet>(map['excludes']!, (value) => UsersOrServicePrincipalSet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
    );
  }
}

