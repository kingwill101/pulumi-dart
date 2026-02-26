// ignore_for_file: unused_element, unnecessary_cast

class GuardrailLlmPolicyModelSettings {
  /// The LLM model that the agent should use.
  /// If not set, the agent will inherit the model from its parent agent.
  final String? model;

  /// If set, this temperature will be used for the LLM model. Temperature
  /// controls the randomness of the model's responses. Lower temperatures
  /// produce responses that are more predictable. Higher temperatures produce
  /// responses that are more creative.
  final double? temperature;

  GuardrailLlmPolicyModelSettings({
    this.model,
    this.temperature,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modelValue = model;
    if (modelValue != null) {
      map['model'] = modelValue;
    }
    final temperatureValue = temperature;
    if (temperatureValue != null) {
      map['temperature'] = temperatureValue;
    }
    return map;
  }

  factory GuardrailLlmPolicyModelSettings.fromMap(Map<String, dynamic> map) {
    return GuardrailLlmPolicyModelSettings(
      model: map['model'] == null ? null : map['model'] as String,
      temperature:
          map['temperature'] == null ? null : map['temperature'] as double,
    );
  }
}
