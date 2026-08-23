// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogGroupNameConfiguration {
  /// Pattern used for generating destination log group names during centralization. The pattern can contain static text and dynamic variables that are replaced with source attributes. For supported dynamic variables, see the [AWS documentation](https://docs.aws.amazon.com/cloudwatch/latest/observabilityadmin/API_LogGroupNameConfiguration.html). Note that `$` used in dynamic variables must be escaped as `$$` in Terraform configuration.
  final pulumi.Input<String> logGroupNamePattern;

  /// Creates a new [CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogGroupNameConfiguration].
  /// [logGroupNamePattern] Pattern used for generating destination log group names during centralization. The pattern can contain static text and dynamic variables that are replaced with source attributes. For supported dynamic variables, see the [AWS documentation](https://docs.aws.amazon.com/cloudwatch/latest/observabilityadmin/API_LogGroupNameConfiguration.html). Note that `$` used in dynamic variables must be escaped as `$$` in Terraform configuration.
  const CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogGroupNameConfiguration({
    required this.logGroupNamePattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupNamePattern': logGroupNamePattern,
    };
  }

  factory CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogGroupNameConfiguration.fromMap(Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogGroupNameConfiguration(
      logGroupNamePattern: pulumi.Input.fromValue(map['logGroupNamePattern'] as String),
    );
  }
}
