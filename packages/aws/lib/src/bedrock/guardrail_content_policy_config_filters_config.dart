// ignore_for_file: unused_element, unnecessary_cast

class GuardrailContentPolicyConfigFiltersConfig {
  /// Action to take when harmful content is detected. Valid values: `BLOCK`, `NONE`.
  final String? inputAction;

  /// Toggles guardrail evaluation on input.
  final bool? inputEnabled;

  /// List of selected input modalities. Valid values: `IMAGE`, `TEXT`.
  final List<String>? inputModalities;

  /// Strength for filters. Valid values: `NONE`, `LOW`, `MEDIUM`, `HIGH`.
  final String inputStrength;

  /// Action to take when harmful content is detected. Valid values: `BLOCK`, `NONE`.
  final String? outputAction;

  /// Toggles guardrail evaluation on output.
  final bool? outputEnabled;

  /// List of selected output modalities. Valid values: `IMAGE`, `TEXT`.
  final List<String>? outputModalities;

  /// Strength for filters. Valid values: `NONE`, `LOW`, `MEDIUM`, `HIGH`.
  final String outputStrength;

  /// Type of contextual grounding filter.
  final String type;

  /// Creates a new [GuardrailContentPolicyConfigFiltersConfig].
  /// [inputAction] Action to take when harmful content is detected. Valid values: `BLOCK`, `NONE`.
  /// [inputEnabled] Toggles guardrail evaluation on input.
  /// [inputModalities] List of selected input modalities. Valid values: `IMAGE`, `TEXT`.
  /// [inputStrength] Strength for filters. Valid values: `NONE`, `LOW`, `MEDIUM`, `HIGH`.
  /// [outputAction] Action to take when harmful content is detected. Valid values: `BLOCK`, `NONE`.
  /// [outputEnabled] Toggles guardrail evaluation on output.
  /// [outputModalities] List of selected output modalities. Valid values: `IMAGE`, `TEXT`.
  /// [outputStrength] Strength for filters. Valid values: `NONE`, `LOW`, `MEDIUM`, `HIGH`.
  /// [type] Type of contextual grounding filter.
  GuardrailContentPolicyConfigFiltersConfig({
    this.inputAction,
    this.inputEnabled,
    this.inputModalities,
    required this.inputStrength,
    this.outputAction,
    this.outputEnabled,
    this.outputModalities,
    required this.outputStrength,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inputActionValue = inputAction;
    if (inputActionValue != null) {
      map['inputAction'] = inputActionValue;
    }
    final inputEnabledValue = inputEnabled;
    if (inputEnabledValue != null) {
      map['inputEnabled'] = inputEnabledValue;
    }
    final inputModalitiesValue = inputModalities;
    if (inputModalitiesValue != null) {
      map['inputModalities'] = inputModalitiesValue;
    }
    map['inputStrength'] = inputStrength;
    final outputActionValue = outputAction;
    if (outputActionValue != null) {
      map['outputAction'] = outputActionValue;
    }
    final outputEnabledValue = outputEnabled;
    if (outputEnabledValue != null) {
      map['outputEnabled'] = outputEnabledValue;
    }
    final outputModalitiesValue = outputModalities;
    if (outputModalitiesValue != null) {
      map['outputModalities'] = outputModalitiesValue;
    }
    map['outputStrength'] = outputStrength;
    map['type'] = type;
    return map;
  }

  factory GuardrailContentPolicyConfigFiltersConfig.fromMap(
      Map<String, dynamic> map) {
    return GuardrailContentPolicyConfigFiltersConfig(
      inputAction:
          map['inputAction'] == null ? null : map['inputAction'] as String,
      inputEnabled:
          map['inputEnabled'] == null ? null : map['inputEnabled'] as bool,
      inputModalities: map['inputModalities'] == null
          ? null
          : (map['inputModalities'] as List).cast<String>(),
      inputStrength: map['inputStrength'] as String,
      outputAction:
          map['outputAction'] == null ? null : map['outputAction'] as String,
      outputEnabled:
          map['outputEnabled'] == null ? null : map['outputEnabled'] as bool,
      outputModalities: map['outputModalities'] == null
          ? null
          : (map['outputModalities'] as List).cast<String>(),
      outputStrength: map['outputStrength'] as String,
      type: map['type'] as String,
    );
  }
}
