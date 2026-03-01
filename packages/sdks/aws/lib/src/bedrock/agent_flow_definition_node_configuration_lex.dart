// ignore_for_file: unused_element, unnecessary_cast


class AgentFlowDefinitionNodeConfigurationLex {
  /// The Amazon Resource Name (ARN) of the Amazon Lex bot alias to invoke.
  final String botAliasArn;
  /// The Region to invoke the Amazon Lex bot in
  final String localeId;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationLex].
  /// [botAliasArn] The Amazon Resource Name (ARN) of the Amazon Lex bot alias to invoke.
  /// [localeId] The Region to invoke the Amazon Lex bot in
  AgentFlowDefinitionNodeConfigurationLex({
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
      botAliasArn: map['botAliasArn'] as String,
      localeId: map['localeId'] as String,
    );
  }
}

