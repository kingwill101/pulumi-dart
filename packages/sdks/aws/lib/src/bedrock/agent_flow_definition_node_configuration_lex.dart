// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionNodeConfigurationLex {
  /// ARN of the Amazon Lex bot alias to invoke.
  final pulumi.Input<String> botAliasArn;
  /// Locale to use when invoking the Amazon Lex bot, such as `en_US`.
  final pulumi.Input<String> localeId;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationLex].
  /// [botAliasArn] ARN of the Amazon Lex bot alias to invoke.
  /// [localeId] Locale to use when invoking the Amazon Lex bot, such as `en_US`.
  const AgentFlowDefinitionNodeConfigurationLex({
    required this.botAliasArn,
    required this.localeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botAliasArn': botAliasArn,
      'localeId': localeId,
    };
  }

  factory AgentFlowDefinitionNodeConfigurationLex.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationLex(
      botAliasArn: pulumi.Input.fromValue(map['botAliasArn'] as String),
      localeId: pulumi.Input.fromValue(map['localeId'] as String),
    );
  }
}
