// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration {
  /// Criteria for selecting data sources. Uses the same filter expression format as `logGroupSelectionCriteria`, but operates on Data Source Name and Data Source Type operands. When both `logGroupSelectionCriteria` and `dataSourceSelectionCriteria` are specified, a log event must match both criteria to be centralized. Must be between 1 and 2000 characters.
  final pulumi.Input<String>? dataSourceSelectionCriteria;
  /// Strategy for handling encrypted log groups. Valid values: `ALLOW`, `SKIP`.
  final pulumi.Input<String> encryptedLogGroupStrategy;
  /// Criteria for selecting log groups. Use `*` for all log groups or OAM filter syntax like `LogGroupName LIKE '/aws/lambda%'`. Must be between 1 and 2000 characters.
  final pulumi.Input<String>? logGroupSelectionCriteria;

  /// Creates a new [CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration].
  /// [dataSourceSelectionCriteria] Criteria for selecting data sources. Uses the same filter expression format as `logGroupSelectionCriteria`, but operates on Data Source Name and Data Source Type operands. When both `logGroupSelectionCriteria` and `dataSourceSelectionCriteria` are specified, a log event must match both criteria to be centralized. Must be between 1 and 2000 characters.
  /// [encryptedLogGroupStrategy] Strategy for handling encrypted log groups. Valid values: `ALLOW`, `SKIP`.
  /// [logGroupSelectionCriteria] Criteria for selecting log groups. Use `*` for all log groups or OAM filter syntax like `LogGroupName LIKE '/aws/lambda%'`. Must be between 1 and 2000 characters.
  const CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration({
    this.dataSourceSelectionCriteria,
    required this.encryptedLogGroupStrategy,
    this.logGroupSelectionCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceSelectionCriteria': ?dataSourceSelectionCriteria,
      'encryptedLogGroupStrategy': encryptedLogGroupStrategy,
      'logGroupSelectionCriteria': ?logGroupSelectionCriteria,
    };
  }

  factory CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration.fromMap(Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration(
      dataSourceSelectionCriteria: (() { final guardedValue = map['dataSourceSelectionCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedLogGroupStrategy: pulumi.Input.fromValue(map['encryptedLogGroupStrategy'] as String),
      logGroupSelectionCriteria: (() { final guardedValue = map['logGroupSelectionCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
