// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'users_or_service_principal_set_response.dart';

/// The PIM Only Mode settings.
class PIMOnlyModeSettingsResponse {
  /// The list of excluded assignment types allowed.
  final List<String>? excludedAssignmentTypes;
  /// The list of excluded entities that the rule does not apply to.
  final List<UsersOrServicePrincipalSetResponse>? excludes;
  /// Determines whether the setting is enabled, disabled or report only.
  final String? mode;

  /// Creates a new [PIMOnlyModeSettingsResponse].
  /// [excludedAssignmentTypes] The list of excluded assignment types allowed.
  /// [excludes] The list of excluded entities that the rule does not apply to.
  /// [mode] Determines whether the setting is enabled, disabled or report only.
  PIMOnlyModeSettingsResponse({
    this.excludedAssignmentTypes,
    this.excludes,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedAssignmentTypes': ?excludedAssignmentTypes,
      'excludes': ?excludes == null ? null : pulumi.Input.encodeList<UsersOrServicePrincipalSetResponse, Map<String, dynamic>>(excludes!, (value) => value.toMap()),
      'mode': ?mode,
    };
  }

  factory PIMOnlyModeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return PIMOnlyModeSettingsResponse(
      excludedAssignmentTypes: map['excludedAssignmentTypes'] == null ? null : (map['excludedAssignmentTypes'] as List).cast<String>(),
      excludes: map['excludes'] == null ? null : pulumi.Input.decodeList<UsersOrServicePrincipalSetResponse>(map['excludes'], (value) => UsersOrServicePrincipalSetResponse.fromMap((value as Map).cast<String, dynamic>())),
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}

