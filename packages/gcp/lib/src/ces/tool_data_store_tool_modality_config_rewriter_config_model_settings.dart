// ignore_for_file: unused_element, unnecessary_cast

class ToolDataStoreToolModalityConfigRewriterConfigModelSettings {
  /// The LLM model that the agent should use.
  /// If not set, the agent will inherit the model from its parent agent.
  final String? model;

  /// If set, this temperature will be used for the LLM model. Temperature
  /// controls the randomness of the model's responses. Lower temperatures
  /// produce responses that are more predictable. Higher temperatures produce
  /// responses that are more creative.
  final double? temperature;

  /// Creates a new [ToolDataStoreToolModalityConfigRewriterConfigModelSettings].
  /// [model] The LLM model that the agent should use.
  /// [temperature] If set, this temperature will be used for the LLM model. Temperature
  ToolDataStoreToolModalityConfigRewriterConfigModelSettings({
    this.model,
    this.temperature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'model': ?model, 'temperature': ?temperature};
  }

  factory ToolDataStoreToolModalityConfigRewriterConfigModelSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ToolDataStoreToolModalityConfigRewriterConfigModelSettings(
      model: map['model'] == null ? null : map['model'] as String,
      temperature: map['temperature'] == null
          ? null
          : map['temperature'] as double,
    );
  }
}
