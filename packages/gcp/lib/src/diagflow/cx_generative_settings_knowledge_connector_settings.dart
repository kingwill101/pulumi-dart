// ignore_for_file: unused_element, unnecessary_cast

class CxGenerativeSettingsKnowledgeConnectorSettings {
  /// Name of the virtual agent. Used for LLM prompt. Can be left empty.
  final String? agent;

  /// Identity of the agent, e.g. "virtual agent", "AI assistant".
  final String? agentIdentity;

  /// Agent scope, e.g. "Example company website", "internal Example company website for employees", "manual of car owner".
  final String? agentScope;

  /// Name of the company, organization or other entity that the agent represents. Used for knowledge connector LLM prompt and for knowledge search.
  final String? business;

  /// Company description, used for LLM prompt, e.g. "a family company selling freshly roasted coffee beans".``
  final String? businessDescription;

  /// Whether to disable fallback to Data Store search results (in case the LLM couldn't pick a proper answer). Per default the feature is enabled.
  final bool? disableDataStoreFallback;

  /// Creates a new [CxGenerativeSettingsKnowledgeConnectorSettings].
  /// [agent] Name of the virtual agent. Used for LLM prompt. Can be left empty.
  /// [agentIdentity] Identity of the agent, e.g. "virtual agent", "AI assistant".
  /// [agentScope] Agent scope, e.g. "Example company website", "internal Example company website for employees", "manual of car owner".
  /// [business] Name of the company, organization or other entity that the agent represents. Used for knowledge connector LLM prompt and for knowledge search.
  /// [businessDescription] Company description, used for LLM prompt, e.g. "a family company selling freshly roasted coffee beans".``
  /// [disableDataStoreFallback] Whether to disable fallback to Data Store search results (in case the LLM couldn't pick a proper answer). Per default the feature is enabled.
  CxGenerativeSettingsKnowledgeConnectorSettings({
    this.agent,
    this.agentIdentity,
    this.agentScope,
    this.business,
    this.businessDescription,
    this.disableDataStoreFallback,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agent': ?agent,
      'agentIdentity': ?agentIdentity,
      'agentScope': ?agentScope,
      'business': ?business,
      'businessDescription': ?businessDescription,
      'disableDataStoreFallback': ?disableDataStoreFallback,
    };
  }

  factory CxGenerativeSettingsKnowledgeConnectorSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxGenerativeSettingsKnowledgeConnectorSettings(
      agent: map['agent'] == null ? null : map['agent'] as String,
      agentIdentity: map['agentIdentity'] == null
          ? null
          : map['agentIdentity'] as String,
      agentScope: map['agentScope'] == null
          ? null
          : map['agentScope'] as String,
      business: map['business'] == null ? null : map['business'] as String,
      businessDescription: map['businessDescription'] == null
          ? null
          : map['businessDescription'] as String,
      disableDataStoreFallback: map['disableDataStoreFallback'] == null
          ? null
          : map['disableDataStoreFallback'] as bool,
    );
  }
}
