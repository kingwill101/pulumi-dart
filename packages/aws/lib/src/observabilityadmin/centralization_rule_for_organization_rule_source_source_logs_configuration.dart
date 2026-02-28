// ignore_for_file: unused_element, unnecessary_cast

class CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration {
  /// Strategy for handling encrypted log groups. Valid values: `ALLOW`, `SKIP`.
  final String encryptedLogGroupStrategy;

  /// Criteria for selecting log groups. Use `*` for all log groups or OAM filter syntax like `LogGroupName LIKE '/aws/lambda%'`. Must be between 1 and 2000 characters.
  final String logGroupSelectionCriteria;

  /// Creates a new [CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration].
  /// [encryptedLogGroupStrategy] Strategy for handling encrypted log groups. Valid values: `ALLOW`, `SKIP`.
  /// [logGroupSelectionCriteria] Criteria for selecting log groups. Use `*` for all log groups or OAM filter syntax like `LogGroupName LIKE '/aws/lambda%'`. Must be between 1 and 2000 characters.
  CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration({
    required this.encryptedLogGroupStrategy,
    required this.logGroupSelectionCriteria,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptedLogGroupStrategy'] = encryptedLogGroupStrategy;
    map['logGroupSelectionCriteria'] = logGroupSelectionCriteria;
    return map;
  }

  factory CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration(
      encryptedLogGroupStrategy: map['encryptedLogGroupStrategy'] as String,
      logGroupSelectionCriteria: map['logGroupSelectionCriteria'] as String,
    );
  }
}
