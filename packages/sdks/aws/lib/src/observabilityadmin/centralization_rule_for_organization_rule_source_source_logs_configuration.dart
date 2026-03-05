// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration {
  /// Strategy for handling encrypted log groups. Valid values: `ALLOW`, `SKIP`.
  final pulumi.Input<String> encryptedLogGroupStrategy;
  /// Criteria for selecting log groups. Use `*` for all log groups or OAM filter syntax like `LogGroupName LIKE '/aws/lambda%'`. Must be between 1 and 2000 characters.
  final pulumi.Input<String> logGroupSelectionCriteria;

  /// Creates a new [CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration].
  /// [encryptedLogGroupStrategy] Strategy for handling encrypted log groups. Valid values: `ALLOW`, `SKIP`.
  /// [logGroupSelectionCriteria] Criteria for selecting log groups. Use `*` for all log groups or OAM filter syntax like `LogGroupName LIKE '/aws/lambda%'`. Must be between 1 and 2000 characters.
  CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration({
    required this.encryptedLogGroupStrategy,
    required this.logGroupSelectionCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptedLogGroupStrategy': encryptedLogGroupStrategy,
      'logGroupSelectionCriteria': logGroupSelectionCriteria,
    };
  }

  factory CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration.fromMap(Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration(
      encryptedLogGroupStrategy: pulumi.Input.fromValue(map['encryptedLogGroupStrategy'] as String),
      logGroupSelectionCriteria: pulumi.Input.fromValue(map['logGroupSelectionCriteria'] as String),
    );
  }
}

