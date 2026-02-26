// ignore_for_file: unused_element, unnecessary_cast

class AssistantCustomerPolicyModelArmorConfig {
  /// Defines the failure mode for Model Armor sanitization.
  /// The supported values: 'FAIL_OPEN', 'FAIL_CLOSED'.
  final String? failureMode;

  /// The resource name of the Model Armor template for sanitizing assistant
  /// responses. Format:
  /// `projects/{project}/locations/{location}/templates/{template_id}`
  /// If not specified, no sanitization will be applied to the assistant
  /// response.
  final String responseTemplate;

  /// The resource name of the Model Armor template for sanitizing user
  /// prompts. Format:
  /// `projects/{project}/locations/{location}/templates/{template_id}`
  /// If not specified, no sanitization will be applied to the user prompt.
  final String userPromptTemplate;

  AssistantCustomerPolicyModelArmorConfig({
    this.failureMode,
    required this.responseTemplate,
    required this.userPromptTemplate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final failureModeValue = failureMode;
    if (failureModeValue != null) {
      map['failureMode'] = failureModeValue;
    }
    map['responseTemplate'] = responseTemplate;
    map['userPromptTemplate'] = userPromptTemplate;
    return map;
  }

  factory AssistantCustomerPolicyModelArmorConfig.fromMap(
      Map<String, dynamic> map) {
    return AssistantCustomerPolicyModelArmorConfig(
      failureMode:
          map['failureMode'] == null ? null : map['failureMode'] as String,
      responseTemplate: map['responseTemplate'] as String,
      userPromptTemplate: map['userPromptTemplate'] as String,
    );
  }
}
