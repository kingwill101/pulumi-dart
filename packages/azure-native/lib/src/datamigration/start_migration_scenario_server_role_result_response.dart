// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

/// Server role migration result
class StartMigrationScenarioServerRoleResultResponse {
  /// Migration exceptions and warnings.
  final List<ReportableExceptionResponse> exceptionsAndWarnings;
  /// Name of server role.
  final String name;
  /// Current state of migration
  final String state;

  /// Creates a new [StartMigrationScenarioServerRoleResultResponse].
  /// [exceptionsAndWarnings] Migration exceptions and warnings.
  /// [name] Name of server role.
  /// [state] Current state of migration
  StartMigrationScenarioServerRoleResultResponse({
    required this.exceptionsAndWarnings,
    required this.name,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exceptionsAndWarnings': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(exceptionsAndWarnings, (value) => value.toMap()),
      'name': name,
      'state': state,
    };
  }

  factory StartMigrationScenarioServerRoleResultResponse.fromMap(Map<String, dynamic> map) {
    return StartMigrationScenarioServerRoleResultResponse(
      exceptionsAndWarnings: pulumi.Input.decodeList<ReportableExceptionResponse>(map['exceptionsAndWarnings'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      state: map['state'] as String,
    );
  }
}

